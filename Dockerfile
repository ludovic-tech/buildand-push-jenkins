FROM nginx:latest
RUN echo "Webhookform Git to toto" > /tmp/web
RUN echo "Welcome from WebHook Gt" > /usr/share/nginx/html/index.html
EXPOSE 80
