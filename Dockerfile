FROM nginx:latest
RUN sed -i 's/Welcome to nginx!/Bienvenue serveur via jenkins build auto and push/g' /usr/share/nginx/html/index.html
EXPOSE 80

