# parallel_bids

A simple (for now) template script for the execution of commands for all valid subjects in a BIDS dataset using [GNU Parallel](https://www.gnu.org/software/parallel/).
Saves the commands used and details about their execution, which ensures your analyses are documented and reproducible.

## Requirements:
- GNU parallel

## Instructions:
- Change the path variables to match your project folder, and make sure all relevant subfolders exist
- Place files with the commands you want to run in $cmds_path
- Run the script!

## Example:

- create and populate a folder with the commands you want to run:
```bash
mkdir $project_path/logs/listall
for subject in `cat $subject_list` ; do
echo 'ls -a ${data_path}/$subject' > $cmds_path/${subject}.txt
done
```

- change cmd_name to an appropriate name:
```bash
# Path of the analysis
cmd_name=listall
```

Now running the script will use GNU Parallel to run all commands (in this case, listing the contents of each of the subject folders)!


## TODO:
Edit script and expand scope to include generation of scripts from a provided template (either from a file or text input) for all subjects, create the correct subdirs in logs,
and allow interactive selection of parameters like core use.
