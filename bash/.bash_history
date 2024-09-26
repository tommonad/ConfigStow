ls
eix
source .bashrc
source ~/.bashrc
cd
ls
dialog --msgbox "Hello, world!" 10 30
dialog --yesno "Do you want to continue?" 10 30
dialog --menu "Choose an option:" 15 50 4 1 "Option 1" 2 "Option 2" 3 "Option 3" 4 "Option 4"
dialog --checklist "Select options:" 15 50 4 1 "Option 1" off 2 "Option 2" on 3 "Option 3" off 4 "Option 4" on
# Display an input box and capture the result
name=$(dialog --inputbox "Enter your name:" 10 30 3>&1 1>&2 2>&3)
exitcode=$?
# Check if the user pressed OK or Cancel
if [ $exitcode -eq 0 ]; then     dialog --msgbox "Hello, $name!" 10 30; else     dialog --msgbox "You canceled the input." 10 30; fi
# Clean up
task 13 done
task 10 done
task
cl
clear
exit
st -e bash -c 'echo "$TERM_FONT"'
echo $TERM_FONT
exit
