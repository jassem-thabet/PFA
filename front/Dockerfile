FROM nginx:1.23
WORKDIR /usr/share/nginx/html

# Clean default nginx html directory
RUN rm -rf ./*

# Copy Angular build files
COPY ../dist/kaddem/ ./

# Custom Nginx config (optional)
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
