export JAVA_HOME=/library/Java/Home
export LANG=ru_RU.UTF-8
set meta-flag on
set input-meta on
set output-meta on
set convert-meta off
export MAVEN_OPTS="-Xms2g -Xmx2g -XX:MaxPermSize=4g -XX:MaxDirectMemorySize=4g"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

##
# Your previous /Users/dapurv5/.profile file was backed up as /Users/dapurv5/.profile.macports-saved_2012-09-05_at_12:30:27
##

# MacPorts Installer addition on 2012-09-05_at_12:30:27: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export ANT_HOME=/opt/local 
export SVN_EDITOR=subl

alias mci="mvn clean install -DskipTests"
alias mtee="mvn verify -Psystem-tests,ee"
alias mec="mvn eclipse:clean"
alias mee="mvn eclipse:eclipse"
