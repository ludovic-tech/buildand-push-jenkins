FROM nginx:latest

RUN echo "Welcome from Jenkins" > /usr/share/nginx/html/index.html
EXPOSE 80


