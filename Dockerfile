FROM nginx:latest
RUN echo "Webhook" > /tmp/web
RUN echo "Welcome from Git" > /usr/share/nginx/html/index.html
EXPOSE 80
