# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="avit"
#export ZSH_THEME="juanghurtado"
#export ZSH_THEME="arrow"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx brew sublime docker)

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
#/Users/scott/util/powerline/powerline/bindings/zsh/powerline.zsh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/scott/anaconda/bin:/Users/scott/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/texbin
source /Users/scott/util/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#if [ -f ~/.zsh_nocorrect ]; then
#    while read -r COMMAND; do
#        alias $COMMAND="nocorrect $COMMAND"
#    done < /Users/scott/.zsh_nocorrect
#fi

#export ANDROID_HOME=/usr/local/opt/android-sdk

export JAVA_HOME=$(/usr/libexec/java_home)

export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

#Added for Postgres db
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# source ~/util/zsh-notify/notify.plugin.zsh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# SwiftEnv
export SWIFTENV_ROOT="$HOME/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$PATH"
eval "$(swiftenv init -)"

