#!/bin/bash
cd /home/swj/dev/website

# Remove submodule reference if it exists
git rm --cached screenshots 2>/dev/null || true

# Remove .gitmodules if it exists
rm -f .gitmodules

# Remove .git folder inside screenshots if it exists (this makes it a submodule)
rm -rf screenshots/.git

# Add screenshots as regular files
git add screenshots/

# Add all other files
git add .

# Commit the fix
git commit -m "Fix: Remove submodule reference, add screenshots as regular files"

# Push
git push -u origin main

echo "Fixed! Screenshots are now regular files, not a submodule."

