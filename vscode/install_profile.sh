#!/usr/bin/env bash
set -euf -o pipefail

readonly SCRIPT_NAME=$(basename "$0")
readonly SCRIPT_PATH=${0}
# shellcheck disable=SC2034
readonly SCRIPT_DIR=$(dirname "$SCRIPT_PATH")

function help() {
    cat <<- EOF
NAME
    $SCRIPT_NAME - Example of argument parsing

SYNOPSIS 
    $SCRIPT_NAME [options]

OPTIONS
    -h --help                show this help
    -p --profile             [REQUIRED] profile to install
    --install                install the extensions into a profile
    --remove                 remove the extensions from a profile

EXAMPLES
    $SCRIPT_NAME --profile=chrisguest75 

EOF
}

# if no variables are passed
if [[ -z "$@" ]]; then
    help
    exit 0
fi 

PROFILE=
INSTALL=false
REMOVE=false

for i in "$@"
do
case $i in
    -h|--help)
        help
        exit 0
    ;; 
    -p=*|--profile=*)
        PROFILE="${i#*=}"
        shift # past argument=value
    ;;
    --install)
        # shellcheck disable=SC2034
        INSTALL=true   
        shift # past argument=value
    ;;     
    --remove)
        # shellcheck disable=SC2034
        REMOVE=true   
        shift # past argument=value
    ;;      
esac
done    

if [ -z "${PROFILE}" ]; then
    help
    exit 0
fi 

if [ ! -f "${PROFILE}/extensions.json" ]; then
    echo "Profile ${PROFILE} does not exist"
    exit 0
fi 

if [ "${INSTALL}" == "true" ]; then
    echo "Profile ${PROFILE}"
    while IFS=" ", read -r extension 
    do
        echo "Install $extension" 
        code --profile ${PROFILE} --install-extension $extension
    done < <(jq -c -r '.[]' ${PROFILE}/extensions.json)
else
    echo "Skipping install for profile ${PROFILE}"
fi 

if [ "${REMOVE}" == "true" ]; then
    echo "Profile ${PROFILE}"
    while IFS=" ", read -r extension 
    do
        echo "Uninstall $extension" 
        code --profile ${PROFILE} --uninstall-extension $extension
    done < <(jq -c -r '.[]' ${PROFILE}/extensions.json)
else
    echo "Skipping uninstall for profile ${PROFILE}"
fi 