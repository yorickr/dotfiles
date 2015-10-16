# Path to your oh-my-zsh installation.
export ZSH=/home/imegumii/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dpoggi"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

export VISUAL=vim
export EDITOR=vim
if [ -d "$HOME/bin" ] ; then
      PATH="$HOME/bin:$PATH"
fi
export USE_CCACHE=1
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

alias autoclick='watch -n 0.1 xdotool click 1'

alias fu='sudo $(fc -ln -1)'

alias q='exit'
alias reload='source ~/.zshrc'

#SSH
alias server='ssh -p 777 imegumii@www.imegumii.nl'
alias router='ssh -p 778 root@www.imegumii.nl'
alias digitalocean='ssh imegumii@git.imegumii.nl'

#Connman
alias cmrst='sudo systemctl stop connman.service && sudo systemctl start connman.service'

#Ease of use
alias psaux='ps aux | grep '
alias backuphome='rdiff-backup -v5 --exclude /home/imegumii/Dropbox --exclude /home/imegumii/cloud --exclude /home/imegumii/.local --exclude /home/imegumii/.cache --exclude /home/imegumii/Documents/3TB --exclude /home/imegumii/Documents/Drives --exclude /home/imegumii/VirtualBox\ VMs --exclude /home/imegumii/Documents/1TB --exclude /home/imegumii/android --exclude /home/imegumii/.ccache --remote-schema "ssh -C -p 777 %s rdiff-backup --server" /home/imegumii imegumii@www.imegumii.nl::/media/HDD/Backup/Laptop'
alias nconn="connman-ncurses"
alias chromeproxy="killall chromium & chromium --proxy-server="socks://localhost:48000"& ssh -2 -ND 48000 -p 777 imegumii@www.imegumii.nl"
alias virtman="ssh -p 777 -L localhost:8000:localhost:8000 -L localhost:6080:localhost:6080 imegumii@www.imegumii.nl"
cdls() {builtin cd "$@" && ls; }
alias cd=cdls
alias sizeof='du -d 1 -h'
alias yaup="yaourt -Syua && sudo paccache -r && sudo paccache -ruk0 &&  yaourt -Rs 'yaourt -Qtdq' "
alias startxw8="startx /usr/bin/virtualbox --startvm 6df6044b-26be-415f-8e78-3f1e7d149399 --fullscreen"

#Audio
alias audioserver='sh ~/Scripts/setaudioserver.sh s'
alias audiolocal='sh ~/Scripts/setaudioserver.sh'

#Music
#alias mp='sh ~/Scripts/mp.sh'

#Basic commands
alias mv='mv -v'
alias rm='rm -v'
alias cp='cp -v'

#Git alias
alias st='git status'
alias ad='git add'
alias cm='git commit'
alias br='git branch'
alias co='git checkout'
alias fa='git fetch --all'
alias gt='git tag'
alias pt='git push --tags'
alias gtl='git tag -l -n9'
alias gpus='git push'
alias gpul='git pull'
alias gm='git merge'
alias sta='git stash'
alias rmorig='find -name "*.orig" -exec rm {} \;'


# Auto startx depending on the tty
#if [[ -z $DISPLAY ]] && (( $EUID != 0 )) {
     #[[ ${TTY/tty} != $TTY ]] && (( ${TTY:8:1} <= 3 )) &&
               #exec startx &
#}


if [ -n "$DESKTOP_SESSION" ];then
  eval $(gnome-keyring-daemon --start)
  export SSH_AUTH_SOCK
fi
