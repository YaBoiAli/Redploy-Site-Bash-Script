#!/bin/bash

# Kill all existing tmux sessions
tmux kill-server

# Navigate to the project directory
cd C:\Users\alina\Meta-Intern\portfolio-VPS\meta-portfolio\mlh-portfolio

# Update the Git repository
git fetch && git reset origin/main --hard

# Enter the Python virtual environment and install dependencies
source venv/bin/activate
pip install -r requirements.txt

# Start a new detached tmux session with the Flask server
tmux new-session -d -s flask-server 'source venv/bin/activate && cd /path/to/your/project && flask run'

echo "Redeployment completed successfully."
