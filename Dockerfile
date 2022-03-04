# Specify a base image
# alpine images are much smaller in size(~5 MB)
FROM node:alpine

# WORKDIR /usr/app -> used to update docker which are the files from Working Directory
# and save it in 'usr' directory
WORKDIR /usr/app 

# Install some dependencies
# COPY from drive "./" to drive "./"
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm","start"]