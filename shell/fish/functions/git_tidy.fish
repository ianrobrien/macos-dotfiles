function git_tidy
    git branch --merged | egrep -v "(^\*|master|main)" | xargs git branch -d
end
