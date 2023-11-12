# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the rest of the application code to the container
COPY . .

# Set the build argument ECHO_TEXT to a default value
ARG ECHO_TEXT="No ECHO_TEXT env is specified"

# Set the environment variable ECHO_TEXT to the value of the build argument
ENV ECHO_TEXT=$ECHO_TEXT

# Expose port 3000
EXPOSE 3000

# Start the server
CMD [ "npm", "start" ]
