        function _ls --description "List contents of directory" -V opt 
            isatty stdout 
            and set -a opt -F 
            #command ls $opt $argv | lolcat 
            command ls $opt $argv 
        end

