#!/usr/bin/env bash

# First Check who is running the commands
user_check=$( id -u )
if [ $user_check -ne 0 ]; then
  echo " Run as root user"
fi


# creating a log file named Log to store all o/p generated by command
log=/tmp/roboshop.log
rm -f $log

status_check(){
  if [ $! -eq 0 ]; then
    echo "Done"
  else
    echo "Error"
  fi
}