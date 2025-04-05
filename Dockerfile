# Use the official Node.js image
FROM node:16

# Set the working directory
WORKDIR /app

# Install http-server globally
RUN npm install -g http-server

# Copy the project files into the container (including all the files from the root directory)
COPY . .

# Expose port 8080 for the server
EXPOSE 8080

# Start the server using http-server
CMD ["http-server", ".", "-p", "8080"]
