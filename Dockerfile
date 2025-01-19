# Base image
FROM nginx:latest

# copy static website files
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]