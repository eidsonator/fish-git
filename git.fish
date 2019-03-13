function git

    if count $argv > /dev/null
        switch $argv[1]
        case ignore
            git_ignore  $argv
        case staged
            git_staged
        case untracked
            git_untracked $argv
        case version
            git_version $argv
        case \*
            command git $argv
            return $status
        end    
    else
        command git
        return $status 
    end

end
