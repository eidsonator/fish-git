function git

    if count $argv > /dev/null
        if [ $argv[1] = 'version' ]
            git_version $argv
        else if [ $argv[1] = 'ignore' ]
            git_ignore $argv
        else 
            command git $argv
            return $status
        end    
    else
        command git
        return $status 
    end

end
