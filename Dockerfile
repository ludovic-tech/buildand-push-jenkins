FROM nginx:latest

RUN echo "Welcome from Jenkins via Git Hook Triggers Update" > /usr/share/nginx/html/index.html
EXPOSE 80


