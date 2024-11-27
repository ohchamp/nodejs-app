# Use an official Node.js runtime as a parent image
FROM node:alpine3.20

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the app's port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
