#!/bin/bash
set -e

# Use tunnel name arg or hostname as default
TUNNEL_NAME=${VSCODE_TUNNEL_NAME:-$HOSTNAME}

if [ $# -eq 0 ]; then
    echo "Logging in..."
    echo "Authenticating with $VSCODE_TUNNEL_AUTH..."
    echo "Please visit the following URL to log in: https://vscode-auth.github.com/auth/$VSCODE_TUNNEL_AUTH"
    echo "Enter the code provided to complete the login process."
    echo "access token $VSCODE_TUNNEL_ACCESS_TOKEN"

    echo "Starting tunnel server..."

else
    exec "$@"
fi
