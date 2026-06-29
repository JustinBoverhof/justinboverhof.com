FROM jekyll/jekyll:latest

WORKDIR /srv/jekyll

# Install Node and browser-sync at image build time
RUN apk add --no-cache nodejs npm inotify-tools
RUN npm install -g browser-sync

EXPOSE 4001 35729 3000 3001

CMD ["jekyll", "serve", "--watch", "--livereload"]
