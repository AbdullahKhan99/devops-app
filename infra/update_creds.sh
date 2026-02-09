#!/bin/bash

# take input for MFA code
echo -n "Enter MFA code: "
read code

# execute AWS command to get session token
# json_output=$(aws sts get-session-token --profile ebate --serial-number arn:aws:iam::502269232941:mfa/adeel.amin@e-bate.net --token-code "$code")
json_output=$(aws sts get-session-token --profile my-profile --serial-number arn:aws:iam::981419766716:mfa/abdullah.khan@techwards.co --token-code "$code")

# extract credentials from JSON output
access_key=$(echo "$json_output" | jq -r '.Credentials.AccessKeyId')
secret_key=$(echo "$json_output" | jq -r '.Credentials.SecretAccessKey')
session_token=$(echo "$json_output" | jq -r '.Credentials.SessionToken')

eval "export AWS_ACCESS_KEY_ID=$access_key"
eval "export AWS_SECRET_ACCESS_KEY=$secret_key"
eval "export AWS_SESSION_TOKEN=$session_token"

aws sts get-caller-identity | jq -r '.Arn'