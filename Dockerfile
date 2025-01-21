# Use Amazon Linux 2 as the base image
FROM amazonlinux

# Install Nginx and clean up unnecessary files
RUN yum -y update && \
    yum -y install nginx && \
    yum clean all

# Download the index.html file from the GitHub repository
# You can use curl or wget to fetch the index.html file
RUN curl -o /usr/share/nginx/html/index.html https://raw.githubusercontent.com/GSathya7/project03/main/index.html

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx in the foreground (daemon off)
CMD ["nginx", "-g", "daemon off;"]
