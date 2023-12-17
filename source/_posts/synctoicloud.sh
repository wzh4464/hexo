#/bin/bash

icloud_dir="/Users/$(whoami)/Library/Mobile Documents/iCloud~md~obsidian/Documents"
local_dir="../Secret Base"

echo "Syncing local Obsidian vault to iCloud..."

rsync -avPz --delete "$local_dir" "$icloud_dir"
