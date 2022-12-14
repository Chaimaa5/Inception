 FROM debian:buster
 
 RUN apt update -y && apt install -y nginx 
  
 COPY ./nginx-selfsigned.crt /

 COPY ./nginx-selfsigned.key /
 
 COPY ./default /etc/nginx/sites-available
  
 EXPOSE 443:443
 
 CMD ["nginx", "-g", "daemon off;"]