FROM nginx:latest

RUN echo "Welcome from WebHook Gt" > /usr/share/nginx/html/index.html
EXPOSE 80
VOLUME /usr/ludovic/
