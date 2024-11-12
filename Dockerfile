# Use an official Node.js runtime as a parent image
FROM node:20.11.0

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app's source code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "run", "dev"]
