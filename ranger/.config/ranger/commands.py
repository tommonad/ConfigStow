# This is a sample commands.py.  You can add your own commands here.
#
# Please refer to commands_full.py for all the default commands and a complete
# documentation.  Do NOT add them all here, or you may end up with defunct
# commands when upgrading ranger.

# A simple command for demonstration purposes follows.
# -----------------------------------------------------------------------------

from __future__ import (absolute_import, division, print_function)

# You can import any python module as needed.
import os

# You always need to import ranger.api.commands here to get the Command class:
from ranger.api.commands import Command

import subprocess
import mimetypes
import shlex

# Any class that is a subclass of "Command" will be integrated into ranger as a
# command.  Try typing ":my_edit<ENTER>" in ranger!
class my_edit(Command):
    # The so-called doc-string of the class will be visible in the built-in
    # help that is accessible by typing "?c" inside ranger.
    """:my_edit <filename>

    A sample command for demonstration purposes that opens a file in an editor.
    """

    # The execute method is called when you run this command in ranger.
    def execute(self):
        # self.arg(1) is the first (space-separated) argument to the function.
        # This way you can write ":my_edit somefilename<ENTER>".
        if self.arg(1):
            # self.rest(1) contains self.arg(1) and everything that follows
            target_filename = self.rest(1)
        else:
            # self.fm is a ranger.core.filemanager.FileManager object and gives
            # you access to internals of ranger.
            # self.fm.thisfile is a ranger.container.file.File object and is a
            # reference to the currently selected file.
            target_filename = self.fm.thisfile.path

        # This is a generic function to print text in ranger.
        self.fm.notify("Let's edit the file " + target_filename + "!")

        # Using bad=True in fm.notify allows you to print error messages:
        if not os.path.exists(target_filename):
            self.fm.notify("The given file does not exist!", bad=True)
            return

        # This executes a function from ranger.core.acitons, a module with a
        # variety of subroutines that can help you construct commands.
        # Check out the source, or run "pydoc ranger.core.actions" for a list.
        self.fm.edit_file(target_filename)

    # The tab method is called when you press tab, and should return a list of
    # suggestions that the user will tab through.
    # tabnum is 1 for <TAB> and -1 for <S-TAB> by default
    def tab(self, tabnum):
        # This is a generic tab-completion function that iterates through the
        # content of the current directory.
        return self._tab_directory_content()



class print_file(Command):
    """
    :print_file

    Print the selected file with filetype-specific handling:
    - Text: uses `enscript` for formatting
    - PDF: printed directly
    - Image: converted to PDF and scaled to fit page
    """

    def execute(self):
        filepath = self.fm.thisfile.path

        if os.path.isdir(filepath):
            self.fm.notify("Cannot print a directory.", bad=True)
            return

        mime_type, _ = mimetypes.guess_type(filepath)
        if not mime_type:
            self.fm.notify("Unknown file type.", bad=True)
            return

        try:
            if mime_type.startswith("text"):
                # Format and fit text using enscript
                subprocess.run(["enscript", "-B", "-o", "-", filepath], check=True, stdout=subprocess.PIPE)
                subprocess.run(["lpr"], input=subprocess.PIPE)
                self.fm.notify(f"Printed text file: {os.path.basename(filepath)}")

            elif mime_type == "application/pdf":
                # Print PDF with scaling
                subprocess.run(["lp", "-o", "fit-to-page", filepath], check=True)
                self.fm.notify(f"Printed PDF: {os.path.basename(filepath)}")

            elif mime_type.startswith("image"):
                temp_pdf = "/tmp/ranger_print_image.pdf"
                subprocess.run([
                    "convert", filepath,
                    "-resize", "1024x1024",
                    "-gravity", "center",
                    "-extent", "1240x1754",  # A4 @ 150dpi
                    temp_pdf
                ], check=True)
                subprocess.run(["lp", "-o", "fit-to-page", temp_pdf], check=True)
                self.fm.notify(f"Printed image: {os.path.basename(filepath)}")

            else:
                self.fm.notify(f"Unsupported file type: {mime_type}", bad=True)

        except FileNotFoundError as e:
            self.fm.notify(f"Missing required command: {e}", bad=True)
        except subprocess.CalledProcessError as e:
            self.fm.notify(f"Print error: {e}", bad=True)

class compress(Command):
    """
    :compress <archive_name>

    Compress selected files into a .tar.zst archive using tar with Zstandard compression.
    """
    def execute(self):
        import shlex

        if not self.arg(1):
            self.fm.notify("Specify a name for the archive, e.g. archive.tar.zst", bad=True)
            return

        archive_name = self.rest(1)
        if not archive_name.endswith(".tar.zst"):
            archive_name += ".tar.zst"

        files = [f.relative_path for f in self.fm.thistab.get_selection()]
        cmd = ["tar", "--zstd", "-cf", archive_name] + files
        self.fm.execute_command(cmd)
        self.fm.notify(f"Compressed to {archive_name}")

class extract(Command):
    """
    :extract

    Extract the selected .tar.zst archive using tar.
    """
    def execute(self):
        import os
        import shlex

        file = self.fm.thisfile.path

        if not file.endswith(".tar.zst"):
            self.fm.notify("This command only extracts .tar.zst archives.", bad=True)
            return

        cmd = ["tar", "--zstd", "-xf", file]
        self.fm.execute_command(cmd)
        self.fm.notify(f"Extracted {os.path.basename(file)}")
