function git_ignore
    if not test -d ~/.git
        echo "No git repo found"
        return 1
    end
    getopts $argv | while read -l key value
        switch $key
            case _
                if [ $value != ignore ]
                    command echo $value >> ./.gitignore      
                end
            case \*
                echo unknown flag $key
        end
    end
end