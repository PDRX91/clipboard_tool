#!/bin/bash

CONFIG_FILE="./copy_content.txt"  # Update this path accordingly

if [ "$1" == "--list" ]; then
  echo "Available commands:"
  cat $CONFIG_FILE
  exit 0
fi

if [ "$1" == "add" ]; then
  shift  # Remove 'add' from arguments
  TRIGGER=$1
  shift  # Remove trigger word from arguments
  TEXT=""
  while [ $# -gt 0 ]; do  # Loop through all remaining arguments
    TEXT="$TEXT $1"
    shift  # Move to next argument
  done
  echo "$TRIGGER -${TEXT:1}" >> $CONFIG_FILE  # Trim leading space and append to file
  echo "Added command: $TRIGGER"
  exit 0
fi

if [ "$1" == "delete" ]; then
  TRIGGER=$2
  grep -v "^$TRIGGER -" $CONFIG_FILE > temp_file && mv temp_file $CONFIG_FILE
  echo "Deleted command: $TRIGGER"
  exit 0
fi

while IFS=' - ' read -r trigger text; do
  if [ "$1" == "$trigger" ]; then
    echo "$text" | pbcopy
    echo "\"$text\" copied to clipboard"
    exit 0
  fi
done < $CONFIG_FILE

echo "Unknown command: $1"
