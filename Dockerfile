FROM docker2021repos/nginx:latest
RUN sed -i 's/toto/From_git/g' /usr/share/nginx/html/index.html
EXPOSE 80

