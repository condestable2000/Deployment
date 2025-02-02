#!/bin/bash

# Update server with latest version of UNCode, a branch can also be specified to the script via the -b tag

BRANCH=""
while getopts "b:" opt; do
    case $opt in
        b)
            BRANCH = $OPTARG
            ;;
        :)
            echo "Option -$OPTARG requires an argument" >&2
            exit 1
            ;;
        \?)
            echo "Invalid option -$OPTARG" >&2
            exit 1	       
            ;;
    esac
done

if [ -n "$BRANCH" ]
then
    sudo -H pip install --upgrade -I "git+https://github.com/JuezUN/INGInious.git@$BRANCH"
else
    sudo -H pip install --upgrade -I git+https://github.com/JuezUN/INGInious.git
fi
