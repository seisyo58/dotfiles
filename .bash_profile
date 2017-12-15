if [ ${SHLVL} = 1 ]; then
if [[ -e ~/custom-command ]]; then
export PATH=$PATH:~/custom-command
fi
tmux ls
if [[ $? = 1 ]]; then
tmux
fi
fi
