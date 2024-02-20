# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application files to the working directory
COPY . .

##Set the PORT environment variable
ENV PORT 3000

# Expose the port on which the app runs
EXPOSE 3000

# Define the command to run your application
CMD [ "npm", "start" ]
