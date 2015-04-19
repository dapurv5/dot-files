# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"



# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias mci="mvn clean install -DskipTests"
alias mec="mvn eclipse:clean"
alias mee="mvn eclipse:eclipse"

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -l ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -la ${colorflag}"

# List only directories
alias lsd='ls -l ${colorflag} | grep "^d"'

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

#Delete a non-empty directory.
alias rmr="rm -rf"
alias mo="cd ~/br/work/src/mobile"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH=$HOME/ProgramFiles/apache-maven-3.0.5/bin:$PATH
#sudo xcode-select -switch /Applications/Xcode.app/
export CPP=/Applications/Xcode.app/Contents/Developer/usr/bin/cpp
export LDFLAGS=-L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk/usr/lib
export CPPFLAGS="-I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk/usr/include/ -I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk/usr/include/c++/4.2.1/"
export CFLAGS=-I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk/usr/include/


export LC_ALL=C
export JAVA_HOME=$(/usr/libexec/java_home)  #/System/Library/Frameworks/JavaVM.framework/Home
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_11.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.7.0.jdk/Contents/Home
export JAVA_OPTS="-Xms1024m -Xmx2048m"
export BR_TOP=$HOME/br
export EC2_HOME=$BR_TOP/tools/ec2
export EC2_PRIVATE_KEY=~/.ec2/pk-amazon.pem  #$BR_TOP/work/src/ec2_keys/pk-SRB4RQBZ2M52CB5Q54XUF7H3BKUJHVBB.pem
export EC2_CERT=~/.ec2/cert-amazon.pem  #$BR_TOP/work/src/ec2_keys/cert-SRB4RQBZ2M52CB5Q54XUF7H3BKUJHVBB.pem

export PATH=$PATH:$HOME/ProgramFiles/protobuf-2.5.0/bin

export PATH=$BR_TOP/tools/ec2/bin:$BR_TOP/tools/elastic-mapreduce:$BR_TOP/tools/gogrid:$PATH
export PATH=$BR_TOP/thirdparty/hadoop-0.20.205.0/bin:$PATH
export PATH=$BR_TOP/work/src/backend/distribution/target/dist:$PATH


export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=$HOME/ProgramFiles/apache-cassandra-1.2.13/bin:$PATH


# From Document 2
export backend="$BR_TOP/work/src/backend"
export dist="$backend/distribution/target/dist"
function s4cmd(){PYTHONPATH=$dist/python:$dist/python/br/s4cmd python -m br.s4cmd.s4cmd "$@";}

export ANT_OPTS="-Xms512m -Xmx512m"
export PYTHONPATH=/Users/dapurv5/br/work/src/:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/:/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/:/Users/dapurv5/br/work/src/backend/dist/python

export MAVEN_OPTS=-Xmx1024m

export PATH=$BR_TOP/work/src/backend/dist:$PATH







#Play Framework

#Scala Installation =====
export SCALA_HOME=$HOME/ProgramFiles/scala-2.10.3
export SCALA=$SCALA_HOME/bin
export PATH=$SCALA:$PATH

#SBT Installation for coursera course.
export SBT_HOME=$HOME/ProgramFiles/sbt
export SBT=$SBT_HOME/bin
export PATH=$SBT:$PATH
#scala installation =====

export PATH=$PATH:$HOME/ProgramFiles/play-2.2.0
export PATH=$PATH:$HOME/ProgramFiles/gwt-2.5.1
export PATH=$PATH:/usr/local/share/npm/bin/

export PLAY_PATH=$HOME/ProgramFiles/play-2.2.0
export GWT_PATH=$HOME/ProgramFiles/gwt-2.5.1


#Arul's help for Quick Login

fabssh() {
    realm=${1?Realm required}
    role=${2?Role required}
    instance=${3:-"-1"}
    env PYTHONPATH=${BR_TOP}/work/src/ fab --fabfile=${HOME}/fabfile.py ssh:$realm,$role,$instance
}

faburl() {
    realm=${1?Realm required}
    role=${2?Role required}
    instance=${3:-"-1"}
    merchant=${4:-"neimanmarcus"}
    env PYTHONPATH=${BR_TOP}/work/src/ fab --fabfile=${HOME}/fabfile.py url:$realm,$role,$instance,$merchant
}

fabfrom() {
    if [ $# -ne 4 ]; then
        echo fabfrom  realm role remotefile localfile
    else
        env PYTHONPATH=${HOME}/br/work/src/ fab --fabfile=${HOME}/fabfile.py scpfrom:$1,$2,$3,$4

    fi
}

fabto() {
    if [ $# -ne 4 ]; then
        echo fabto localfile realm role remotefile 
    else
        env PYTHONPATH=${HOME}/br/work/src/ fab --fabfile=${HOME}/fabfile.py scpto:$2,$3,$4,$1
    fi
}



#setup_osx_gnu
export PATH="/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"


