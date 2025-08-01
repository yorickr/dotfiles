# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dpoggi"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  asdf
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export VISUAL=vim
export EDITOR=vim

# Path changes
if [ -d "$HOME/bin" ] ; then
      PATH="$HOME/bin:$PATH"
fi


PATH="$PATH:$HOME/.local/bin"

alias reload="source ~/.zshrc"
alias q="exit"
cdls () { builtin cd "$@" && ls; }
alias cd=cdls
alias upd="sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt clean && fwupdmgr refresh ; fwupdmgr get-updates"

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
alias fa='git fetch --all --tags'
alias gt='git tag'
alias pt='git push --tags'
alias gtl='git tag -l -n9'
alias gpus='git push'
alias gpul='git pull'
alias gm='git merge'
alias gr='git reset'
alias greb='git rebase'
alias gdf='git diff --ignore-space-change'
alias sta='git stash'
alias rmorig='find -name "*.orig" -exec rm {} \;'
alias rmrej='find -name "*.rej" -exec rm {} \;'
alias gche='git cherry-pick'

alias wg='sudo wg-quick up wg0'
alias wg-down='sudo wg-quick down wg0'


if [ -f "$HOME/.sendcloud_alias" ]; then
  source "$HOME/.sendcloud_alias"
fi

eval "$(fzf --zsh)"

eval "$(zoxide init zsh)"

alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

eval "$(colima completion zsh)"


fpath+=~/.zfunc; autoload -Uz compinit; compinit

zstyle ':completion:*' menu select
