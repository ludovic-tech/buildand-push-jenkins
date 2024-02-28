FROM nginx:latest
RUN echo "Welcome from Webhook" > /usr/share/nginx/html/index.html
EXPOSE 80
