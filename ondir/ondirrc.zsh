echo 'checking for an ondirrc file...'

# loadOndrrc loads the ondirrc file passed in as the first argument
loadOndrrc() {
  . ./$1
  echo "'$1' loaded"
}

# look up the .ondirrc || ondirrc
[[ -r .ondirrc ]] && loadOndrrc ".ondirrc"
[[ -r ondirrc ]]  && loadOndrrc "ondirrc"

