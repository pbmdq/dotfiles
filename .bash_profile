# Solve unknown locale: UTF-8 in Python
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#MongoDB
export PATH=$PATH:/Users/shengao/mongoDB/mongodb-osx-x86_64-3.2.10/bin
#heron setup
export PATH=$PATH:~/bin


#icdiff
export PATH="/Users/shengao/Apps_downloaded/icdiff:$PATH"
#ctags
export PATH="/usr/local/bin:$PATH"

#Jena
export JENAROOT=~/Library/Jena-2.6.4
export PATH=$JENAROOT/bin:$PATH

#ugly hack by lorenz, fix when time
export PATH=/Users/shengao/lorenz/storm-yarn/bin:$PATH
export STORM_HOME="/Users/shengao/lorenz/storm-tentacle/apache-storm-0.9.2-incubating.local-installation"
export PATH=$STORM_HOME/bin:$PATH
#export STORM_HOME=/Users/shengao/lorenz/apache-storm-0.9.2-incubating
#export PATH=$STORM_HOME/bin:$PATH
# end hack

export PATH="/Users/shengao/Library/Application Support/GoodSync":$PATH
export CLICOLOR=1
export PATH="~shengao/bin":$PATH
export TERM=xterm-256color
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'
eval $(gpg-agent --daemon --no-grab --write-env-file $HOME/.gpg-agent-info)
export GPG_TTY=$(tty)
export GPG_AGENT_INFO


# default JVM for OSX
#export JAVA_HOME=$(/usr/libexec/java_home)
# specified JVM for OSX
# set in /etc/profile
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# hadoop and spark
# original path
#export YARN_PREFIX=/Users/shengao/Library/Spark
export HADOOP_USER_NAME=shengao
export YARN_PREFIX=/usr/local
export HADOOP_HOME=$YARN_PREFIX/hadoop-2.2.0
export SPARK_PREFIX=$YARN_PREFIX/spark-1.4.1-bin-hadoop2.3
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export HADOOP_LOG_DIR=$HADOOP_HOME/logs
export PATH=$HADOOP_HOME/bin:$SPARK_PREFIX/bin:$PATH
export PATH=$HADOOP_HOME/sbin:$SPARK_PREFIX/sbin:$PATH
export PATH=$JAVA_HOME/bin:$PATH
export HADOOP_INSTALL=$HADOOP_HOME
# appearence
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
# alias ls='ls -GFh'
# alias sc_pro='source ~/.bash_profile'

alias restart_en0='sudo ifconfig en0 down && sudo ifconfig en0 up'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


#if this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac


# enable color support of ls and also add handy aliases
#if [ "$TERM" != "dumb" ]; then
#    eval "`dircolors -b`"
#    alias ls='ls --color=auto'
#    #alias dir='ls --color=auto --format=vertical'
#    #alias vdir='ls --color=auto --format=long'
#fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'
#alias today='date +"%A, %B %-d, %Y"'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi


##
# Your previous /Users/shengao/.bash_profile file was backed up as /Users/shengao/.bash_profile.macports-saved_2014-09-09_at_14:55:08
##

# MacPorts Installer addition on 2014-09-09_at_14:55:08: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# added by Anaconda 2.0.1 installer
# export PATH="/Users/shengao/anaconda/bin:$PATH"
export PATH=/usr/local/bin:$PATH
alias vim=/usr/local/bin/vim

alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

