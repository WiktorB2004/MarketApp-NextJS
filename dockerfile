# Use an official Node.js runtime as a base image
FROM node:alpine3.19

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the Next.js application
RUN npm run build

# Expose port 3000 to outside world
EXPOSE 3000

# Start the application
CMD ["npm", "run", "start"]
