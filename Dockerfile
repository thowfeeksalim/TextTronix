# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Clone the repository into the container (build context)
RUN git clone https://github.com/thowfeeksalim/TextTronix.git .

# Install app dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
