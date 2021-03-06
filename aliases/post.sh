#!/bin/bash
# HELP CLI USAGE:
# post 'SOME_API_URL' 'VALID_JSON'
# post 'http://localhost:3000/api/hello' '{"os": "pop os", "email": "sahilrajput03@gmail.com"}'

# TIP: 
# GET A VALID JSON IN CLIPBOARD FROM A JS OBJECT BY OPENING BROWSER'S CONSOLE AND USE:
# copy(JSON.stringify(myJsObj)) // AND VALID JSON WILL BE COPIED TO CLIPBOARD NOW, YIKES!

curl \
  -X POST \
  -H "Content-Type: application/json" \
  -d "$2" \
  "$1"


# TESTING BELOW:
# echo $1
# echo $2
# echo "$@"
# Remember to set url via export command.