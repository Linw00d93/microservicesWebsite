FROM ubuntu
RUN apt-get update -y 
RUN apt-get upgrade -y
RUN apt-get install git -y 
RUN apt-get install nginx -y 
RUN apt-get install net-tools -y
RUN apt-get install curl -y
RUN apt-get install nano  -y
RUN apt-get install rename -y
RUN service nginx restart 
RUN ifconfig
RUN /etc/init.d/nginx restart
