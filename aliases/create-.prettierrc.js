#!/bin/bash
#set -x
cp ~/my_bin/files/.prettierrc.js .
cp ~/my_bin/files/.prettierignore .

# To use iif when using option `semi: false`, use below way to make 
# iff work to format it properly:
# ;(() => {
#   log('hell')
# })()

#referenced in reply to an issue @ prettier repo: https://github.com/prettier/prettier/issues/2800#issuecomment-329139240
