#!/bin/bash

# Read the new SSH username from Jenkins parameter
new_ssh_username=$1

# Update the orch.yaml file using sed
sed -i "s/sshUserName: .*/sshUserName: ${new_ssh_username}/" orch.yaml

# Create a new file orch-replaced.yaml with the updated content
cp orch.yaml orch-replaced.yaml

# Print out the contents of the replaced file
cat orch-replaced.yaml
