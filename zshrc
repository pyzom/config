
# Wifi connection
~/.scripts/connect_startx.sh
#
# System update
alias spu='sudo -k -S pacman -Syu'

# Install package
alias install='sudo pacman -S '
alias uninstall='sudo pacman -R '

# nnn
source ~/.config/nnn/nnn.zsh

# For ipython error
export LD_PRELOAD=/usr/lib/libstdc++.so.6

# [[ -n "$TMUX" ]] && PROMPT_COMMAND='echo -n -e "\e]2;${PWD##*/}\e\\"'
echo -en "\e]2;"${PWD##*/}"\a" 

# export TERM=xterm-256color
[ -z "$TMUX" ] && export TERM="xterm-256color"
# zsh history configuration
export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=~/.config/zsh/.history

# add PATH variable
export PATH="$PATH:$HOME/.scripts"
export PATH="$PATH:$HOME/.config/zsh"
fpath+=~/.config/zsh/.zfunc
autoload -Uz compinit && compinit

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.local/src/oh-my-zsh

export OPENAI_API_KEY=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

# printf '\033]2;%s\033\\' ${PWD/$HOME/\~} 

# PROMT_COMMAND='echo -n "\033]0;%s\033\\" ${PWD/$HOME/\~}'


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="arrow"

source $ZSH/oh-my-zsh.sh
DISABLE_AUTO_TITLE="true"

# gitrepo config update
alias cpmake='echo delimine | sudo -S cp config.def.h config.h && sudo make clean install'

alias cdc='c && clear'
alias ipython="python3 -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"
alias ipy='/home/zom/.cache/pypoetry/virtualenvs/dojo-JTlyM0DB-py3.12/bin/ipython'
alias jpy='/home/zom/home/zom/.cache/pypoetry/virtualenvs/dojo-JTlyM0DB-py3.12/bin/jupyter-notebook'
alias la='ls -A'
alias ll='ls -lh'
alias ls='ls --color=tty'
alias lh='ls -Ad .*'
alias llh='ls -lAd .*'
alias lsa='ls -lah'
alias lls='clear && ls'
alias lla='clear && la'
alias lll='clear && ll'
alias maggotbrain='vim ~/.config/configurations.txt'
alias sc='source ~/.config/zsh/.zshrc'
alias todo='~/.scripts/todo.sh'
alias vchsh='vim ~/.scripts/chess-session.sh'
alias vdwm='c ~/.local/src/dwm/ && vim ~/.local/src/dwm/config.def.h'
alias vimswap=/home/zom/.cache/vim/swap
alias vipy='vim ~/.ipython/profile_default/ipython_config.py'
alias V='vim ~/.vimrc'
alias vtm='vim ~/.config/tmux/tmux.conf'
alias vix='vim ~/.xinitrc'
alias vz='nvim ~/.config/zsh/.zshrc'
alias dojo=~/.scripts/vim-ipython.sh
alias curses=~/.scripts/vim-curses.sh
alias v=nvim
alias l=clear
alias brightness=~/.scripts/adjust_brightness.sh
alias brup=~/.scripts/brightness_up.sh
alias brdown=~/.scripts/brightness_down.sh
alias dim='echo 2000 | brightness'
alias config_make=~/.scripts/suckless_config_apply.sh
alias addalias=~/.scripts/add_alias.sh
alias l.='ls -d .* --color=auto'
alias pdf='mupdf-x11'
alias renet='echo delimine | sudo -k -S netctl restart homenet1'
alias p='ping archlinux.org'
alias t=tmux
alias wificonf='sudo vim /etc/netctl/homenet'
alias brighten='echo 7500 | brightness'
alias tao=~/.scripts/tao.sh
alias karala=~/.scripts/karalama.sh
alias pll="v /home/zom/rubiks.txt"
alias sigara="cmus-remote --file Dropbox/sigara/sigara_subliminal.ogg"
alias dllink='wget $(echo $(xclip -o -selection clipboard))'

#bluetooth
alias kulaklik="bluetoothctl power on && bluetoothctl connect A4:1B:3A:4B:CE:4E"
alias alexa='bluetoothctl pair C0:91:B9:3D:17:CF && bluetoothctl connect C0:91:B9:3D:17:CF'
alias amp='bluetoothctl pair F8:1D:C8:E4:C5:BF && bluetoothctl connect F8:1D:C8:E4:C5:BF'

#BTU
alias moodle='chromium b-tu.de/elearning/btu/my/ &'

# dict shortcuts
alias engtur="dict -d fd-eng-tur"
alias tureng="dict -d fd-tur-eng"
alias engdeu="dict -d fd-eng-deu"
alias deueng="dict -d fd-deu-eng"
alias turdeu="dict -d fd-tur-deu"
alias deutur="dict -d fd-deu-tur"

alias esne="chromium https://www.youtube.com/embed/g_tea8ZNk5A &"
alias bel="chromium https://www.youtube.com/watch/2eA2Koq6pTI &"
alias shambhavi='chromium https://www.youtube.com/embed/v9d_Z1CwFVQ &'
alias lrt='ls -lrt'
alias prn='vlc ~/.p/*mp4 &'
alias btoff="bluetoothctl power off"
alias hax='chromium haxball.com/play'
alias mvd='/home/zom/.scripts/move_from_downloads.sh'
alias restorechromium='chromium --restore-last-session &'
alias hdmion='xrandr --output HDMI-2 --mode 1920x1080'     
alias hdmimulti=' xrandr --output eDP-1 --auto --right-of HDMI-2 --mode 1920x1080 && nitrogen --restore'
alias hdmioff='xrandr --output HDMI-2 --off'
alias alexa='bluetoothctl pair C0:91:B9:3D:17:CF && bluetoothctl connect C0:91:B9:3D:17:CF'

alias loc='c ~/.local/src'
alias stt='st -A .70'
alias vconf='vim config.def.h'
alias conf='c ~/.config && ls'
alias catan="c ~/py-projects/catan/catan"
alias f=fzf
alias n=nvim
alias n.="nvim +Ex"
alias b=bat
alias ovim=/usr/local/bin/vim
alias vim=nvim
alias cfetch='clear && neofetch'
# new_alias_here
#
#
# sets the window name as the current folder name (for tmux)
function c () { 
    cd $1 
    folderstr=$(basename "$(pwd)");
    homefolder=zom
    if [ "$folderstr" = $homefolder ];
    then echo -en "\e]2;"🏠"\a" 
    else
    echo -en "\e]2;"$folderstr"\a"
    fi}

function locc () {
    c ~/.local/src/$1;
}


# gruvbox colors
source ~/.local/src/oh-my-zsh/plugins/gruvbox-zsh/gruvbox.zsh

# VIM_MODE_VICMD_KEY='jk'
# source "$HOME/gitrepos/zsh-vim-mode/zsh-vim-mode.plugin.zsh"
plugins=(git zsh-vi-mode colorize z zsh-syntax-highlighting)


autoload -U edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

# TMUX - pane title 
if [ "$(ps --no-headers -o comm $PPID)"  = "ipython" ];
    then precmd () {
        echo -en "\e]2;"ipy - ${PWD##*/} "\a" 
       }
fi

export LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"
. /usr/share/LS_COLORS/dircolors.sh


# use gnu dircolors
# if [ -x `whence -p gdircolors` ]; then alias dircolors='gdircolors'; fi
# eval `dircolors --sh ~/Downloads/gruvbox.dircolors`

# enable ls colors for zsh completion
# if [ -x `whence -p gls` ]; then alias ls='gls --color=auto'; fi
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# clear screen 
#
# Get ceiling eg: 7/2 = 4
ceiling_divide() {
  ceiling_result=$((($1+$2-1)/$2))
}

clear_rows() {
  POS=$1
  # Insert Empty Rows to push & preserve the content of screen
  for i in {1..$((LINES-POS-1))}; echo
  # Move to POS, after clearing content from POS to end of screen
  tput cup $((POS-1)) 0
}

# Clear quarter
alias ptop='ceiling_divide $LINES 4; clear_rows $ceiling_result'
# Clear half
alias pmid='ceiling_divide $LINES 2; clear_rows $ceiling_result'
# Clear 3/4th
alias pdown='ceiling_divide $((3*LINES)) 4; clear_rows $ceiling_result'

# FZF
#
if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh

    _fzf_comprun() {
        local command=$1
        shift

        case "$command" in
            cd)     find . -type d | fzf-tmux --height 50% --border sharp --margin 5% --preview 'tree C {} | head -n 10';;
            ls)     find . -type f | fzf-tmux -p;;
            *)      fzf "$@" ;;
        esac
    }

    # Search with fzf and open selected file with vim
    bindkey -s '^v' 'nvim $(fzf);^M'
fi
