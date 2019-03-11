function git_ignore
    if not git_is_repo
        echo "No git repo found"
        return 1
    end
    getopts $argv | while read -l key value
        switch $key
            case _
                if [ $value != ignore ]
                    set exists (cat .gitignore | grep -c $value)
                    if [ $exists != 0 ]
                        echo "$value already ignored"
                    else
                        command echo $value >> ./.gitignore
                    end
                end
            case \*
                echo unknown flag $key
        end
    end
end