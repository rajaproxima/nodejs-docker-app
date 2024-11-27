# Use the official Node.js image from Docker Hub as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) to the container
COPY package*.json ./

# Install the app dependencies (npm install)
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port that the app will run on (this should match the port in your app.js)
EXPOSE 3000

# Define the command to run the app
CMD ["node", "app.js"]
