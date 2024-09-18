# Use the official Node.js image
FROM node:14

# Set working directory in the container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 to access the application
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]
