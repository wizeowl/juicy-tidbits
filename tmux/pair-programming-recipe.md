# Tmux pair programming
2 colleagues are connected to the same machine
### Start session
Start a session from one window
```bash
tmux new session -s pair
```

### Join session
Attach your terminal to a session
```bash
tmux a -t pair
```