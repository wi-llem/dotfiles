set -g fish_greeting

if status is-interactive
  if ! set -q TMUX #&& ! set -q MYVIMRC
      tmux new-session -A -s main
  end
end

if not test -e ~/secrets.fish
  touch ~/secrets.fish
source ~/secrets.fish

set -a PATH /opt/nvim-linux64/bin
set -a PATH /home/willem/repos/bj/bin
set -a PATH /home/willem/.nvm
set -a PATH /home/willem/node-v25.0.0-linux-x64
# Added by `rbenv init` on Fri Sep 26 10:10:16 CEST 2025

status --is-interactive; and ~/.rbenv/bin/rbenv init - --no-rehash fish | source

if test -z (pgrep ssh-agent | string collect)
  eval (ssh-agent -c)
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
end
