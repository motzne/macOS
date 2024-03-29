# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"


# From Felix Krause / https://github.com/KrauseFx/dotfiles
alias zshrc="subl ~/.zshrc"
alias gc="git checkout"
alias gco="git checkout"
alias gcm="git checkout master"
alias gpull="git pull"
alias gpush="git push"
alias gbranch="git checkout -b"
alias gclone="git clone"
alias s="subl ."
alias o="open ."


export PATH=/usr/local/opt/ruby/bin:$HOME/homebrew/bin:$PATH
export LD_LIBRARY_PATH=$HOME/homebrew/lib:$LD_LIBRARY_PATH

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CYTPE=UTF-8


function o() {
  z $1 && open .
}


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

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
zstyle :omz:plugins:ssh-agent identities id_rsa id_rsa_github_zie-ent
plugins=(git ssh-agent)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi


# Ionic Dev
export ANDROID_STUDIO_VERSION=29.0.2
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/build-tools/${ANDROID_STUDIO_VERSION}
export PATH=$PATH:/usr/local/Cellar/maven/3.6.3 

export PATH=/Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home/bin:${GD}/macOS/bin:${PATH}
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
alias i="ionic"

# LUKB 
alias _proxy@lukb="source ~/.lukb.proxy.direct.exports.conf"
alias _proxy@public="source ~/.lukb.proxy.preproxy.exports.conf"
alias _futureApp_android="cd ~/Projects/forty-two/mobile-apps/ebanking/android"
alias _futureApp_ios="cd ~/Projects/forty-two/mobile-apps/ebanking/ios"
alias _iam_spa="cd ~/Projects/forty-two/ebanking/auth/frontend"
alias _fPortal="cd ~/Projects/forty-two/ebanking/portal/frontend"
alias _reConnectVPN="kdestroy; sleep 2; klist; pkill -x Slack; pkill -x Slack; Sleep 1; open -a Slack"
alias _killSSO="pkill -9 KerberosExtension AppSSOAgent KerberosMenuExtra"
alias _killAnyConnect="pkill -9 Cisco\ AnyConnect\ Secure\ Mobility\ Client"
alias @seebruecke="ssh jenkins@172.25.15.141"
alias @kappelbruecke="ssh jenkins@172.25.15.142"
alias @reussteg="ssh jenkins@172.25.15.143"
alias 42="cd ${GD}/forty-two"
alias 21="cd ${GD}/twenty-one"

if [[ -f "$HOME/.lukb.proxy.exports.conf" ]]; then
  export NODE_EXTRA_CA_CERTS="/Users/lu14995/Projects/devlab-config/certificates/ca-bundle.crt"
fi
# Node NVM
#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#source $(brew --prefix nvm)/nvm.sh
export NVM_DIR="${HOME}/.nvm"
source /usr/local/opt/nvm/nvm.sh


autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc


# Kubernetes
which kubectl >/dev/null
if [[ $? -eq 0 ]]; then 
  source <(kubectl completion zsh);
fi
# Disable Homebrew Auto-Update
export HOMEBREW_NO_AUTO_UPDATE=1
alias @DNS_GOOGLE='networksetup -setdnsservers Wi-Fi 8.8.8.8'
alias @DNS_EMPTY='networksetup -setdnsservers Wi-Fi "Empty"'


