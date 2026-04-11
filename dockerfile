# Use the official Jekyll image
FROM jekyll/jekyll:latest

# Set the working directory
WORKDIR /srv/jekyll

# Copy local files to container
COPY . /srv/jekyll

# Install dependencies
RUN bundle install

# Install Node and browser-sync
RUN apk add --no-cache nodejs npm && npm install -g browser-sync

# Expose the default Jekyll port
EXPOSE 4001
# Live Reload Port
EXPOSE 35729
# browser sync port
EXPOSE 3000
EXPOSE 3001

# Default command to serve Jekyll site
CMD ["jekyll", "serve", "--watch", "--livereload"]
