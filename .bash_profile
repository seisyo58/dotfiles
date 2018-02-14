if [ ${SHLVL} = 1 ]; then
if [[ -e ~/custom-command ]]; then
export PATH=$PATH:~/custom-command
fi
N=`which tmux`
if [ -n "$N" ]; then
tmux
else
curl wttr.in
fi
export PATH="~/convenient_command:$PATH"
source ~/.bashrc
fi
