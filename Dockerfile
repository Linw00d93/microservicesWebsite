FROM ubuntu AS WebServer
RUN apt-get update -y 
RUN apt-get upgrade -y
RUN apt-get install git -y 
RUN apt-get install nginx -y 
RUN apt-get install net-tools -y
RUN apt-get install curl -y
RUN apt-get install nano  -y
RUN apt-get install rename -y
RUN git clone https://github.com/Linw00d93/pythonPortfilo.git
RUN cd ./var/www/html/ && rm index.nginx-debian.html
RUN mv pythonPortfilo/flask/html/basicHTML.html ./var/www/html/
RUN cd /var/www/html && rename -f 's/basicHTML.html/index.html/' *.html
RUN service nginx restart 
RUN ifconfig
RUN /etc/init.d/nginx restart

FROM ubuntu AS Nodejs
RUN apt-get update -y && apt-get upgrade -y && apt-get install git -y && apt-get install nginx -y 

FROM redis AS cache
RUN apt-get update -y && apt-get upgrade -y && apt-get install git -y

