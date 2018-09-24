export EDITOR='nano'

# This loads nvm
export NVM_DIR="/Users/pkurzok/.nvm"
. "/usr/local/opt/nvm/nvm.sh" 

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export ANT_HOME=~/DIP/apache-ant-1.8.4
export ANT_ARGS='-propertyfile ~/DIP/ant.properties'
export ECLIPSE_TARGET=~/DIP/eclipse-target

export PATH=$PATH:$ANT_HOME/bin

export PATH="$HOME/.fastlane/bin:$PATH"

export FASTLANE_USER="appleci@prodyna.com"

