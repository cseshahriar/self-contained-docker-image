# Base image
FROM nginx:latest

# Copy static website files to the appropriate directory
COPY ./css /usr/share/nginx/html/css
COPY ./js /usr/share/nginx/html/js
COPY ./img /usr/share/nginx/html/img
COPY ./fonts /usr/share/nginx/html/fonts
COPY ./mail /usr/share/nginx/html/mail
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./404.html /usr/share/nginx/html/404.html
COPY ./contact.html /usr/share/nginx/html/contact.html
COPY ./portfolio-details.html /usr/share/nginx/html/portfolio-details.html
COPY ./blog-single.html /usr/share/nginx/html/blog-single.html

# Expose port 80
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
