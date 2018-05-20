export EDITOR='nano'

# This loads nvm
export NVM_DIR="/Users/pkurzok/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" 

export ANT_HOME=~/DIP/apache-ant-1.8.4
export ANT_ARGS='-propertyfile ~/DIP/ant.properties'
export ECLIPSE_TARGET=~/DIP/eclipse-target

export PATH=$PATH:$ANT_HOME/bin

export PATH="$HOME/.fastlane/bin:$PATH"

