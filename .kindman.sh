#!/bin/bash

# Kindman - kindle manager

function kindman() {
    while getopts ":k:l:" opt; do
    case $opt in
        k) kindle_directory="$OPTARG"
        ;;
        l) local_directory="$OPTARG"
        ;;
        \?) echo "Invalid argument -$OPTARG" >&2 && return 1
        ;;
    esac
    done

    # create a dir in which to store the books
    # -p flag - don't create dir if already exists
    kindle_location=/media/ds/Kindle/documents
    book_location=$HOME/documents/books/$local_directory
    mkdir -p $kindle_location/$kindle_directory

    # skips first two arguments ( -d flag and it's assigned value )
    # unnamed args are book names - go through each one and
    # put it in kindle
    for var in "${@:5}"
    do
        cp -i $book_location/$var $kindle_location/$kindle_directory
    done
}
