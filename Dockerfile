FROM nginx:latest
RUN echo "Webhook" > /tmp/web
RUN echo "Welcome from WebHook Gt" > /usr/share/nginx/html/index.html
EXPOSE 80
