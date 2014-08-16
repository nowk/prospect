__GOPATH=$HOME/Documents/golang # original go path
__ISONDIR=false

echo 'checking for an ondirrc file...'

# setGopath checks to see if your current GOPATH matches PWD then
# does nothing or resets the GOPATH to the default path
setGopath() {
  [[ ! $GOPATH =~ $PWD ]] && export GOPATH=$__GOPATH
  echo "Your current GOPATH is: $GOPATH"
}

# loadOndrrc loads the ondirrc file passed in as the first argument
loadOndrrc() {
  . ./$1
  echo "'$1' loaded"
  __ISONDIR=true
}

# look up the .ondirrc || ondirrc
[[ -r .ondirrc ]]         && loadOndrrc ".ondirrc"
[[ -r ondirrc ]]          && loadOndrrc "ondirrc"
[[ false == $__ISONDIR ]] && echo "No ondirrc file"
setGopath
__ISONDIR=false
