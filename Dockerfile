FROM nginx:latest
RUN sed -i 's/Welcome SUper- WebHook/- WebHook/g' /usr/share/nginx/html/index.html
EXPOSE 80

