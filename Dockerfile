FROM nginx:latest
RUN sed -i 's/Welcome from Github/Welcome to nginx!/g' /usr/share/nginx/html/index.html
EXPOSE 8080
