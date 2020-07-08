FROM ubuntu:14.04

MAINTAINER garima

RUN apt-get update
# install nginx

RUN apt-get install -y nginx

# adding index.html file to nginx as it doesn't contain nginx file by default
# adding copy this index.html to container
# here source is index.html,and destination is container path i.e "/usr/share/nginx/html/index.html"

ADD index.html /usr/share/nginx/html/index.html

# entrypoint will run this command when container starts i.e once container is executed 
# then /usr/sbin/nginx will be executed 
# daemon off allows the service to run on FOReground
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]



EXPOSE 80