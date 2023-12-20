#!/usr/bin/env bash

ls /tmp/cpu.txt
LINES_1=$(cat /tmp/cpu.txt | egrep "campaign1" | wc -l)
LINES_2=$(cat /tmp/cpu.txt | egrep "campaign2" | wc -l)
LINES_3=$(cat /tmp/cpu.txt | egrep "campaign3" | wc -l)
LINES_4=$(cat /tmp/cpu.txt | egrep "Mi" | wc -l)
LINES_5=$(cat /tmp/cpu.txt | egrep "CPU" | wc -l)

if [[ $LINES_1 -eq 1 ]] && [[ $LINES_2 -eq 1 ]] && [[ $LINES_3 -eq 1 ]] && [[ $LINES_4 -eq 1 ]] && [[ $LINES_5 -eq 1 ]]; then
  echo "File exists with expected content"
  exit 0
else
  echo "Expected content not found"
  exit 1
fi
