FROM nginx:latest
RUN sed -i 's/Welcome - WebHook/-sgsdfsd WebHook/g' /usr/share/nginx/html/index.html
EXPOSE 80

