#!/bin/bash

doc_req='required_docs.txt'

##################
##  Color Palet ##
##################

COLOR_RESET="\e[00m"
COLOR_GREEN="\e[1;32m"
COLOR_RED="\e[00;31m"
COLOR_BLUE="\e[00;36m"
COLOR_CYAN="\e[00;33m"

path_checker(){
  # pass path to check for existence
  if [[ ! -f $1 ]]; then
    echo -e ${COLOR_BLUE} '\tFile: ' ${COLOR_CYAN} $1 ${COLOR_RED}"\xE2\x9D\x8C"${COLOR_RESET}
  else
    echo -e ${COLOR_BLUE} '\tFile: ' ${COLOR_CYAN} $1 ${COLOR_GREEN}"\xE2\x9C\x94"${COLOR_RESET}
  fi
}

docs=( $( cat ${doc_req} ) )

for file in "${docs[@]}"
  do
    path_checker $file
  done
  echo 'Required Files exist'
