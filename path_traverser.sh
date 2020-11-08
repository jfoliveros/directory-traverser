#!/bin/bash

export BASE=$(pwd)
. utilities
cd $BASE

create_linked_list
rm -rf FoundObjects
mkdir FoundObjects

while [ $iterator -gt 0 ]
do
  current_node_values=$(get_node_values)
  if [ "$current_node_values" = "" ]
  then
    backtrack
  else
    next_node=$(get_next_node)
    remove_directory_from_path $next_node
    forward $next_node
  fi
done