# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="perryaj"

# Virtualenv Wrapper stuff
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
export VIRTUALENVWRAPPER_PYTHON=/usr/local/Cellar/python/2.7.8/bin/python
source /usr/local/bin/virtualenvwrapper.sh

#~~~~ Aliases ~~~~~#
# Open a file in chromium from command line. Usage: $ chopen myfile.html
alias chopen="open -a chromium"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following lne if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mercurial python rails ruby java common-aliases)

source $ZSH/oh-my-zsh.sh

# User configurated path for OSX Postgre installation, Brewed ruby, pods. uncomment if necessary
# export PATH="/Library/PostgreSQL/9.3/bin:/usr/local/Cellar/ruby/2.0.0-p353/bin/pod:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/texbin"

# export MANPATH="/usr/local/man:$MANPATH"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH=$PATH:/usr/local/go/bin

#~~~ Python/Pip related ~~~~#
# prevent pip from installing to system python, only
# allows pip to work if a virtualenv is active.
export PIP_REQUIRE_VIRTUALENV=true

# cache pip packages for use across projects without dupes
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# function that allows use of pip on the system python
# usage example: syspip install pypackage
syspip(){
       PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
