#!/bin/bash
[ $(cat colors | dmenu -i -p "Are you sure?") ==  "red" ] && echo "You choose red!"
