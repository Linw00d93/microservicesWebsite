FROM ubuntu
RUN apt-get update -y && apt-get upgrade -y && apt-get install git -y && apt-get install nginx -y 
