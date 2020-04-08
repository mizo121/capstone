# Use official Node as the parent image
FROM node:12.15.0
# Set the working directory to /app
WORKDIR /app

# Copy the contents into the container at /app
ADD . /app

# Install packages
RUN npm install

# Make port 80 available to the world outside container
EXPOSE 80

# Run the Node app when the container launches
CMD ["npm", "run", "start"]