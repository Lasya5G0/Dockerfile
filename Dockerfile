# Use the official Nginx image as the base image
FROM nginx:alpine
# Set the working directory in the container
WORKDIR /usr/share/nginx/html
# Copy the HTML files (and any assets) into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (default port for HTTP)
EXPOSE 8084

CMD ["nginx", "-g", "daemon off;"]
