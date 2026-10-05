#!/bin/sh
# Pull the latest report and open the dashboard locally (the repo is private, so there is no hosted page).
cd "$(dirname "$0")" && git pull -q && (sleep 1 && open "http://localhost:8765/") & 
cd "$(dirname "$0")" && exec python3 -m http.server 8765
