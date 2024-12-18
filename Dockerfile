FROM nginx:latest

RUN echo "Welcome from Jenkins via Git Hook" > /usr/share/nginx/html/index.html
EXPOSE 80


