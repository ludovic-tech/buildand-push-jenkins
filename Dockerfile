FROM nginx:latest

RUN echo "Welcome from Jenkins via Git Hook Triggers " > /usr/share/nginx/html/index.html
EXPOSE 8080


