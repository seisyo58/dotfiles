if [ ${SHLVL} = 1 ]; then
if [[ -e ~/custom-command ]]; then
export PATH=$PATH:~/custom-command
fi
if [[ `echo "dpkg -l | grep tmux"` ]]; then
tmux
fi
fi
