#!/bin/bash

# Kindman - kindle manager

function kindman() {
    while getopts ":d:" opt; do
    case $opt in
        d) kindle_directory="$OPTARG"
        ;;
        \?) echo "Invalid argument -$OPTARG" >&2
        ;;
    esac
    done

    printf "Argument arg_1 is %s\n" "$kindle_directory"
}
