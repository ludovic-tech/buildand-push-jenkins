FROM nginx:latest
RUN sed -i 's//Bienvenue/SUper- WebHook/g' /usr/share/nginx/html/index.html
EXPOSE 80

