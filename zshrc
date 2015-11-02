# Path to your oh-my-zsh installation.
export ZSH=/home/omar/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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
plugins=(git zsh-syntax-highlighting history history-substring-search sudo archlinux)

# User configuration

export PATH="/home/omar/bin:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/lib/lightdm/lightdm"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8


export DEFAULT_USER=omar
#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then export EDITOR='vim' else export export
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

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

# more stuff
autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk
alias help=run-help

#colors 
eval `dircolors ~/.dir_colors/dircolors.ansi-dark`


#window title
autoload -Uz vcs_info
case $TERM in
termite|*xterm*|rxvt|rxvt-unicode|rxvt-256color|rxvt-unicode-256color|(dt|k|E)term)
precmd () {
vcs_info
print -Pn "\e]0;[%n@%M][%~]%#\a"
}
preexec () { print -Pn "\e]0;[%n@%M][%~]%# ($1)\a" }
;;
screen|screen-256color)
precmd () {
vcs_info
print -Pn "\e]83;title \"$1\"\a"
print -Pn "\e]0;$TERM - (%L) [%n@%M]%# [%~]\a"
}
preexec () {
print -Pn "\e]83;title \"$1\"\a"
print -Pn "\e]0;$TERM - (%L) [%n@%M]%# [%~] ($1)\a"
}
;;
esac

# EDITOR stuff
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
#PAGER
export PAGER=/usr/sbin/vimpager
alias less=$PAGER
alias zless=$PAGER

export LESS=-R
export LESS_TERMCAP_me=$(printf '\e[0m')
export LESS_TERMCAP_se=$(printf '\e[0m')
export LESS_TERMCAP_ue=$(printf '\e[0m')
export LESS_TERMCAP_mb=$(printf '\e[1;32m')
export LESS_TERMCAP_md=$(printf '\e[1;34m')
export LESS_TERMCAP_us=$(printf '\e[1;32m')
export LESS_TERMCAP_so=$(printf '\e[1;44;1m')

#colored dmesg
alias dmesg="dmesg -T --color=always|sed -e 's|\(^.*'`date +%Y`']\)\(.*\)|\x1b[0;34m\1\x1b[0m - \2|g'"



export BROWSER=/usr/bin/firefox
export STEAM_FRAME_FORCE_CLOSE=1

