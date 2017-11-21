FROM gcr.io/xmatters-eng-mgmt/xmbase

# Update image
RUN yum update -y
RUN yum install httpd -y

# Add configuration file
ADD index.html /var/www/html
ADD src /var/www/html
#RUN echo "The Web Server is Running" > /var/www/html/index.html
EXPOSE 80

# Start the service
CMD mkdir /run/httpd ; /usr/sbin/httpd -D FOREGROUND
