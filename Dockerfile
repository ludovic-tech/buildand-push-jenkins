FROM nginx:latest
RUN sed -i 's/Docker via Weebhook/BIenvenue formation Docker/g' /usr/share/nginx/html/index.html
EXPOSE 80

