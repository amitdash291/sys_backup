# Path to your oh-my-zsh installation.
export ZSH=/Users/amitdash/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kphoen"
DEFAULT_USER="amitdash"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(git alias-tips)

# User configuration

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
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

#android home
export ANDROID_HOME=/Users/amitdash/Library/Android/sdk
export ANDROID_AVD_HOME=/Users/amitdash/.android/avd
export ANDROID_SDK_ROOT=/Users/amitdash/Library/Android/sdk
export PATH=$PATH:"/Users/amitdash/Library/Android/sdk/tools"
export PATH=$PATH:"$ANDROID_HOME/platform-tools"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Zsh aliases
alias zshcon='vim ~/.zshrc'
alias zshcons='source ~/.zshrc'
# alias ohmyzsh="vim ~/.oh-my-zsh"

#Navigation aliases
alias d3='cd; cd SourceCode'
alias authrepo='cd; cd SourceCode/ott-authenticator'
alias nflrepo='cd; cd SourceCode/ott-framework'
alias corerepo='cd; cd SourceCode/ott-netcore-framework'
alias nrepo='cd; cd SourceCode/ott-notifications'

#Psql aliases
alias pstart='pg_ctl -D /usr/local/var/postgres/ start'
alias pstop='pg_ctl -D /usr/local/var/postgres_9.5.2 stop'
alias psrsqa='psql -h 172.16.20.199 -p 5445 -d postgres -U admin'
alias psasqa='psql -h 172.16.20.199 -d store_assortment_qa -p5436 -Uadmin'
alias psrsprod='psql -h 172.16.20.86 -d store_replenishment_prod -p5445 -Ureadonly'
alias psasprod='psql -h172.16.20.86 -dstore_assortment_prod -p5436 -Ureadonly'

#SSH aliases
alias qa2='ssh -t z-qa2.dnspam "sudo -i"'
alias qa3='ssh -t z-qa3.dnspam "sudo -i"'
alias prod10='ssh -t z-prod10.dnspam "sudo -i"'
alias prod11='ssh -t z-prod11.dnspam "sudo -i"'
alias prodcom1='ssh -t z-prod-com-vm1.dnspam "sudo -i"'
alias prodcom2='ssh -t z-prod-com-vm2.dnspam "sudo -i"'
alias qadb='ssh -t z-qa-vm1.dnspam "sudo -i"'
alias proddb='ssh -t spmerchserver2.dnspam "sudo -i"'
alias proddb2='ssh -t z-prod-comdb-vm1.dnspam "sudo -i"'

#Git aliases
alias cup='cd;cd SourceCode;gitup .'

#Build aliases
alias b='./build_scripts/local_build.sh'
alias bgo='./build_scripts/go_build.sh'
alias fb='./build_scripts/unclean_build.sh'
alias sg='./gradlew styleGuides'
alias bdep='./gradlew clean shadowJar --refresh-dependencies'

#Misc aliases
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias cloj="lein repl"
alias mongostart="mongod --config /usr/local/etc/mongod.conf"
alias mongostop="mongo --eval \"db.getSiblingDB('admin').shutdownServer()\""
alias adbsqlite="osascript ~/adb_shell_sqlite.scpt"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
source ~/.bashrc


[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/amitdash/Setups/Tech/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/amitdash/Setups/Tech/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/amitdash/Setups/Tech/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/amitdash/Setups/Tech/google-cloud-sdk/completion.zsh.inc'; fi
