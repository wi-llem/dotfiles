function ls --wraps='/usr/bin/ls -AG1F --color=auto' --wraps='/usr/bin/ls --width=40 --color=auto --group-directories-first' --description 'alias ls=/usr/bin/ls --width=40 --color=auto --group-directories-first'
  /usr/bin/ls --width=40 --color=auto --group-directories-first $argv; 
end
