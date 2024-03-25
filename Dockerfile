
FROM node:lts
 
# Set the working directory in the container
WORKDIR /app
 
# Copy package.json and package-lock.json to the working directory
COPY package*.json /app/
COPY . /app/ 

# Install dependencies
RUN npm install
 
# Copy the rest of the application code

# Expose the port the app runs on
EXPOSE 3000
 
# Command to run the application
CMD ["npm", "start"]