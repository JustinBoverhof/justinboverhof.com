#!/bin/sh
set -e

echo "Installing dependencies..."
bundle install

echo "Running initial Jekyll build..."
jekyll build --config _config.yml,_config.dev.yml

echo "Starting BrowserSync..."
browser-sync start --server _site --port 3000 --files '_site/**/*' --no-open &

echo "Starting Jekyll watch (source files)..."
jekyll build --config _config.yml,_config.dev.yml --watch --force_polling &

echo "Watching config files for changes..."
while true; do
  inotifywait -e modify _config.yml _config.dev.yml
  echo "Config changed, rebuilding..."
  jekyll build --config _config.yml,_config.dev.yml
done