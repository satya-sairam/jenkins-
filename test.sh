#!/bin/bash

# Check if correct number of arguments are provided
if [ "$#" -ne 5 ]; then
    echo "Usage: $0 <sshUserName> <sshPassword> <host1> <host2> <host3>"
    exit 1
fi

# Assigning arguments to variables
sshUserName="$1"
sshPassword="$2"
host1="$3"
host2="$4"
host3="$5"

# Convert sshPassword to base64
sshPasswordBase64=$(echo -n "$sshPassword" | base64)

# Perform replacements and save to new file
sed -e "s/sshUserName: .*/sshUserName: $sshUserName/" \
    -e "s/sshPassword: .*/sshPassword: $sshPasswordBase64/" \
    -e "s/host: \"1.1.1.1\"/host: \"$host1\"/" \
    -e "s/host: \"2.2.2.2\"/host: \"$host2\"/" \
    -e "s/host: \"3.3.3.3\"/host: \"$host3\"/" default.yaml > orch.yaml

cat orch.yaml