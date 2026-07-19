cat << 'EOF' > Dockerfile
FROM nginx:latest

# Copy your web files into the Nginx directory
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css

# Change Nginx default port from 80 to 8080 to satisfy Cloud Run
RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf

EXPOSE 8080
EOF
