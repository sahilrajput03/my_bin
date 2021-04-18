#!/bin/bash
set -x
if /home/array/my_bin/isEmojiPicker
then
  nautilus &
else
  gedit &
fi