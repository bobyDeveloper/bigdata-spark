# We use debian as our base distro for this container.
FROM debian:bullseye
# Refresh apt-get.
RUN apt-get update
# Install some utilities needed by node, npm.
RUN apt-get install -y curl make g++
# Install Node.js and npm.
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install -y nodejs
# Install required npm packages.
ADD package.json /package.json
RUN npm install
# Set /src as the working directory for this container.
WORKDIR /src
# Open up external access to port 80xx
EXPOSE 8083
# Run startup command.
CMD ["node", "/src/server.js"]
