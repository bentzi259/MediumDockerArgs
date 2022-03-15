#!/bin/bash
args_array=("$@")
for i in "${args_array[@]}"
do
  :
  echo "### Got variable $i ###"
done

if [ -z "$script_name" ]; then
    echo "script_name is NOT configured, Script will exit !"
    exit 
else
    echo "script_name passed is: '$script_name'"
    case ${script_name} in
    'cli1.py')
        python cli1.py "$@"
    ;;
    'cli2.py')
        python cli2.py "$@"
    ;;
    'cli3.py')
        python cli3.py "$@"
    ;;
  esac 
 fi






