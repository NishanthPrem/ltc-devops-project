# Use an official Node.js runtime as the base image for building
FROM node:18-alpine as build

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json (if available)
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . ./

# Build the application
RUN npm run build

# Use a lightweight server for the production environment
FROM nginx:stable-alpine

# Copy the build output to the nginx html folder
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80 to the host
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]