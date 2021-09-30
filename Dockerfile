FROM nginx:latest
RUN sed -i 's/From_git/toto/g' /usr/share/nginx/html/index.html
EXPOSE 80

