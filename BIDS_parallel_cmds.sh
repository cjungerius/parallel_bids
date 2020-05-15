#!/bin/bash

#how many cores to use?
cores=8

# Path of the analysis
project_path=/home/$USER/project
subject_list=$project_path/scripts/subjects.txt
data_path=$project_path/data
cmd_name=command
cmds_path=$project_path/logs/$cmd_name


read -p "Please confirm you want to run $( ls -1 ${logs_path} | wc -l ) ${cmd_name} commands using ${cores} cores?" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]];
        then
        cat $cmds_path/* | parallel -a - --load 75% --jobs $cores --memfree 12G --joblog $cmds_path/${cmd_name}_run.txt --verbose --progress
fi
