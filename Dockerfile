# Specify the base image from the official Node.js repository.
FROM node:16
 
# Set the working directory inside the container to /usr/src/app.
WORKDIR /usr/src/app
 
# Copy package.json and package-lock.json (if available) to the container.
COPY package*.json ./
 
# Install dependencies defined in package.json.
RUN npm install
 
# Copy the rest of the application code to the container.
COPY . .
 
# Expose the port your app runs on, e.g., 3000.
EXPOSE 80
 
# Define the command to run your app. 
# (Change "server.js" to your app's entry point if different.)
CMD ["node", "server.js"]