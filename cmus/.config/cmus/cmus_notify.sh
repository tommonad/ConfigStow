#! /usr/bin/env bash

# MIT License
#
# Copyright (c) 2019 Heiker Curiel
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Usage:
#  1. Copy cmus_notify to ~/.cmus/ and make it executable.
#  2. Set the status_display_program variable in cmus
#
#     :set status_display_program=~/.cmus/cmus_notify
#
#  3. Be sure to :save.


if [[ "$1 $2" != "status playing" ]]
then
  exit
fi

declare -A args
artist=""
album=""

args[artist]="Unknown"

# Gather arguments
for ((index=1; index <= "$#"; index+=2))
do
  val_index=$(( index + 1 ))
  args["${!index}"]="${!val_index}"
done

# Format data
if [[ -z ${args[title]} ]] && [[ -n ${args[file]} ]]
then
  args[title]="${args[file]##*/}"
elif [[ -z ${args[file]} ]]
then
  args[title]="Unknown song"
fi

artist="<b>Artist:</b> ${args[artist]}"
if [[ -n ${args[album]} ]]
then
  album="\n<b>Album:</b> ${args[album]}"
fi

# Show notification
opts=("${args[title]}" "$artist$album")
notify-send "${opts[@]}" > /dev/null 2>&1 &
