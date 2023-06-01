FROM nginx:latest
RUN sed -i 's/Welcome -form Github/ WebHook/g' /usr/share/nginx/html/index.html
EXPOSE 80

