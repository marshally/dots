#!/usr/bin/env bash

# Load RVM, if you are using it
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Add rvm gems and brew's sbin
export PATH=$PATH:~/.gem/ruby/1.8/bin:/usr/local/sbin

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Set my editor and git editor
export EDITOR="subl -w"
export VISUAL="subl -w"
export GIT_EDITOR='subl -w'

# Set the path nginx
export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK


# Change this to your console based IRC client of choice.

export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli

export TODO="t"

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

eval "$(hub alias -s bash)"

if [ "$TERM" != "dumb" ]; then
  alias ls='gls -CF --color=auto'
  export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
fi

export OPEN_NI_INSTALL_PATH=/usr/local

# make sure terminals wrap lines correctly after resizing them
shopt -s checkwinsize

# these are not currently used.
# export AWS_RDS_HOME="/usr/local/Cellar/rds-command-line-tools/1.3.003/jars"
# export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
# export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
# export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
# export AWS_RDS_HOME="/usr/local/Cellar/rds-command-line-tools/1.3.003/jars"
# export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.4.2.2/jars"
