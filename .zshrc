# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
if [ "$ITERM_PROFILE" = "Solarized Light" ]; then
  ZSH_THEME="agnoster-light"
fi

# Example aliases
alias zshconfig="nvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="nvim"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
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

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails common-aliases git textmate ruby lighthouse)
plugins=(autoenv compleat gem git git-extras github meteor node npm osx per-directory-history pip pylint python rails ruby sudo tmux web-search wd)

source $ZSH/oh-my-zsh.sh

# Add ADT (Android Development Toolkit) to path.
export ADT_PATH=/usr/local/opt/android-sdk
export ANDROID_HOME=/usr/local/opt/android-sdk
export GCLOUD_PATH=/usr/local/lib/gcloud/google-cloud-sdk/bin
export PATH=$ADT_PATH/tools:$ADT_PATH/platform-tools:$PATH:$GOPATH/bin:~/Library/Python/3.5/bin:$GCLOUD_PATH

# Go package path.
export GOPATH=/home/austin/local/go

# NVM (Node Version Manager)
export NVM_DIR="/usr/local/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Less code highlighting.
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '

# Enable autoenv '.env.leave' config files.
export AUTOENV_ENABLE_LEAVE="yes"

# Set default google credentials to Focusini.
export GOOGLE_APPLICATION_CREDENTIALS=/Users/austin/.keyfiles/Focusini-5e64b41553f8.json

# Iterm integration.
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
