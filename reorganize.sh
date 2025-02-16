#!/bin/bash

# Navigate to the current directory (should be eLearning/)
if [ ! -d ".venv" ]; then
  echo "Error: .venv folder not found in the current directory."
  exit 1
fi

# Create suggested structure
mkdir -p .venv/backend/app/routes
touch .venv/backend/app/__init__.py
touch .venv/backend/app/models.py
touch .venv/backend/app/schemas.py
touch .venv/backend/app/crud.py
touch .venv/backend/app/database.py
touch .venv/backend/app/auth.py
touch .venv/backend/app/routes/__init__.py
touch .venv/backend/.env
touch .venv/backend/run.sh

# Move existing files
if [ -f "requirements.txt" ]; then
  mv requirements.txt .venv/backend/
fi

if [ -f "README.md" ]; then
  mv README.md .venv/backend/
fi

if [ -f "main.py" ]; then
  mv main.py .venv/backend/app/main.py
fi

# Create a placeholder for migrations folder
mkdir -p .venv/backend/migrations

# Print file tree and completion message
echo "Modified file tree:"
tree .venv/backend
echo "Project structure reorganized successfully!"