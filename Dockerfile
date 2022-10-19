FROM nginx:latest
RUN sed -i 's/Welcome to Nginx/BIenvenue formation Docker/g' /usr/share/nginx/html/index.html
EXPOSE 80

