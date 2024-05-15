#!/bin/bash

# # Read the new SSH username from Jenkins parameter
# new_ssh_username=$1

# # Update the orch.yaml file using sed
# sshUserName=$(grep "sshUserName" orch.yaml | cut -d ':' -f2 | tr -d '[:space:]')
# replaced_yaml=$(sed "s/sshUserName: .*/sshUserName: $sshUserName/" newoutput.yaml)

# # Create a new file orch-replaced.yaml with the updated content
# cp orch.yaml orch-replaced.yaml

# # Print out the contents of the replaced file
# cat orch-replaced.yaml




# Ensure a new SSH username is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <new_ssh_username>"
    exit 1
fi

# Read the new SSH username from the command line argument
new_ssh_username=$1

# Update the orch.yaml file using sed
sed -i "s/sshUserName: .*/sshUserName: ${new_ssh_username}/" orch.yaml

# Create a new file orch-replaced.yaml with the updated content
cp orch.yaml orch-replaced.yaml

# Print out the contents of the replaced file
cat orch-replaced.yaml

