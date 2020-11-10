FROM node:12.6-buster-slim

# Install git (required for semantic versionning)
RUN apt update
RUN apt -y install git
RUN mkdir ~/.ssh
RUN ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
