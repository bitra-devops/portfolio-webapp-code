# Use an official Node.js runtime as a parent image
FROM node:20-alpine

# Create a non-root user and group
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Set working directory and give ownership to the new user
WORKDIR /usr/src/app
RUN chown -R appuser:appgroup /usr/src/app

# Switch to non-root user
USER appuser

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install --ignore-scripts

# Copy the rest of the application code
COPY ./src .

# Expose the port your app runs on
EXPOSE 8080

# Command to run your application
CMD ["npx", "http-server"]