#!/bin/bash

# Navigate to project root
cd "$(dirname "$0")/.."

# Execute the JS script to log the time
node scripts/log-time.js

# Check if there are changes to commit
if git status --porcelain=v1 data/time.txt | grep -q "data/time.txt"; then
  # Add the time.txt file to git
  git add data/time.txt
  
  # Commit the changes with timestamp
  git commit -m "Update time.txt with timestamp: $(date)"
  
  # Push the changes
  git push origin HEAD
  
  echo "Changes committed and pushed successfully."
else
  echo "No changes to commit."
fi 