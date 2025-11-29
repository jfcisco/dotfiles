function la --wraps='ls -lah --color=auto' --description 'alias la ls -lah --color=auto'
    command ls -lah --color=never --classify --group-directories-first $argv
end
