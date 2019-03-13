function git_staged
    git diff --name-only --cached
end