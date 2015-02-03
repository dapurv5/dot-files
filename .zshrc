# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

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

#Easier navigation
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

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/home/dapurv5/ProgramFiles/sbt/bin:/home/dapurv5/ProgramFiles/scala-2.10.1/bin:/home/dapurv5/ProgramFiles/apache-maven/apache-maven-3.0.3/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export M2_HOME=/home/dapurv5/ProgramFiles/apache-maven/apache-maven-3.0.3
export M2=$M2_HOME/bin
export PATH=$M2:$PATH 
#export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/

#Bloomreach
export JAVA_OPTS="-Xms1024m -Xmx2048m"
export BR_TOP=$HOME/br
export EC2_HOME=$BR_TOP/tools/ec2
export EC2_PRIVATE_KEY=~/.ec2/pk-amazon.pem  #$BR_TOP/work/src/ec2_keys/pk-SRB4RQBZ2M52CB5Q54XUF7H3BKUJHVBB.pem
export EC2_CERT=~/.ec2/cert-amazon.pem  #$BR_TOP/work/src/ec2_keys/cert-SRB4RQBZ2M52CB5Q54XUF7H3BKUJHVBB.pem

export PATH=$BR_TOP/tools/ec2/bin:$BR_TOP/tools/elastic-mapreduce:$BR_TOP/tools/gogrid:$PATH
export PATH=$BR_TOP/thirdparty/hadoop-0.20.205.0/bin:$PATH
export PATH=$BR_TOP/work/src/backend/distribution/target/dist:$PATH



#Scala Installation =====
export SCALA_HOME=$HOME/ProgramFiles/scala-2.10.1
export SCALA=$SCALA_HOME/bin
export PATH=$SCALA:$PATH

#SBT Installation for coursera course.
export SBT_HOME=$HOME/ProgramFiles/sbt
export SBT=$SBT_HOME/bin
export PATH=$SBT:$PATH

export PYTHONSTARTUP=~/.pythonrc



# From Document 2
export backend="$BR_TOP/work/src/backend"
export dist="$backend/distribution/target/dist"
function s4cmd(){PYTHONPATH=$dist/python:$dist/python/br/s4cmd python -m br.s4cmd.s4cmd "$@";}

export ANT_OPTS="-Xms512m -Xmx512m"
export PYTHONPATH=$BR_TOP/work/src/backend/python/

export MAVEN_OPTS=-Xmx1024m

#scala installation =====

export PATH=$PATH:$HOME/ProgramFiles/play-2.2.0
export PATH=$PATH:$HOME/ProgramFiles/gwt-2.5.1

export PLAY_PATH=$HOME/ProgramFiles/play-2.2.0
export GWT_PATH=$HOME/ProgramFiles/gwt-2.5.1


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
