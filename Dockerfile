FROM nginx:latest
RUN sed -i 's/Welcome to nginx!/Bienvenue serveur via jenkins/g' /usr/share/nginx/html/index.html
EXPOSE 80

