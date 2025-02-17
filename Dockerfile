# FROM  ubuntu:latest
# MAINTAINER devops3941@gmail.com
# RUN yum install -y httpd /
# zip
# # unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip photogenic.zip
# RUN cp -rvf photogenic/* .RUN rm -rf photogenic photogenic.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80 

# FROM ubuntu
# RUN apt-get update && \
# apt-get install nginx -y sudo
# USER devops
# COPY index.html /var/www/html/
# EXPOSE 80
# CMD [“nginx”,”-g”,”daemon off;”]

FROM ubuntu:latest
RUN apt-get update && \
      apt-get -y install sudo

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
USER docker
CMD /bin/bash




# FROM ubuntu:latest
# MAINTAINER devops@3941@gmail.com
# RUN apt update 
# RUN apt install –y apache2 
# RUN apt install –y apache2-utils 
# RUN apt clean 
# CMD [“apache2ctl”, “-D”, “FOREGROUND”]
# EXPOSE 80
# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
#  ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
#  WORKDIR /var/www/html/
#  RUN unzip shine.zip
#  RUN cp -rvf shine/* .
#  RUN rm -rf shine shine.zip
#  CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#  EXPOSE 80
