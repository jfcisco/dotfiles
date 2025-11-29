function ls --description 'alias ls=ls -lh --color=auto'
    command ls -lh --color=never --classify --group-directories-first $argv
end
