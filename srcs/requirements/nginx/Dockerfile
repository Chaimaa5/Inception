 FROM debian:buster
 
 RUN apt update -y && apt install -y nginx 
  
 COPY ./ssl/nginx-selfsigned.crt /

 COPY ./ssl/nginx-selfsigned.key /
 
 COPY ./conf/default /etc/nginx/sites-available/

 CMD ["nginx", "-g", "daemon off;"]