#!/bin/bash

# Kindman - kindle manager

function kindman() {
    while getopts ":d:" opt; do
    case $opt in
        d) kindle_directory="$OPTARG"
        ;;
        \?) echo "Invalid argument -$OPTARG" >&2 && return 1
        ;;
    esac
    done

    # create a dir in which to store the books
    kindle_location=/run/media/domagoj/Kindle/documents/
    mkdir $kindle_location/$kindle_directory

    # skips first two arguments ( -d flag and it's assigned value )
    # unnamed args are book names - go through each one and
    # put it in kindle
    for var in "${@:3}"
    do
        echo "$var"
    done
}
