#Share history between tmux sessions and tabs
This is more of bash wizardry (∩｀-´)⊃━☆ﾟ.*･｡ﾟ

###1 - Open your ~/.bashrc
```bash
nano ~/.bashrc
```

###1 - Add this
```bash
shopt -s histappend
shopt -s histreedit
shopt -s histverify
#ignores white space and duplicate commands
HISTCONTROL='ignoreboth'
#PROMPT_COMMAND contains the last executed command 
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
```

###1 - Source your ~/.bashrc
```bash
source ~/.bashrc
```
 