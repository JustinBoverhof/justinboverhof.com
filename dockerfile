# Use the official Jekyll image
FROM jekyll/jekyll:latest

# Set the working directory
WORKDIR /srv/jekyll

# Copy local files to container
COPY . /srv/jekyll

# Install dependencies
RUN bundle install

# Expose the default Jekyll port
EXPOSE 4000

# Default command to serve Jekyll site
CMD ["jekyll", "serve", "--host", "0.0.0.0", "--watch", "--livereload"]
