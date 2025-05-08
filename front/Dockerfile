# Stage 1: Build the Angular application
FROM node:18-alpine AS build

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY front/package*.json ./



# Copy the rest of the Angular project
COPY front/ ./

# Build the Angular project for production
RUN npm run build --prod

# Stage 2: Serve the Angular application with Nginx
FROM nginx:alpine

# Copy the built Angular files from the build stage to the Nginx directory
COPY --from=build /app/dist/kaddem /usr/share/nginx/html

# Copy custom Nginx configuration (optional, if you have a custom nginx.conf)
# COPY default.conf /etc/nginx/conf.d/

# Expose port 80
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
