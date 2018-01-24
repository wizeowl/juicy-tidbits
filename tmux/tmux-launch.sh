SESSION=dev
tmux new-session -d -s $SESSION
tmux new-window -t $SESSION:1 -n 'ngserver'

tmux select-window -t $SESSION:1
tmux split-window -h
tmux send-keys 'cd ~/workspace/bookevents-client; ng serve' C-m

tmux attach -t $SESSION