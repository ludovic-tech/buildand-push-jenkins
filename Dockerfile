FROM nginx:latest
RUN sed -i 's/ENco/From_git/g' /usr/share/nginx/html/index.html
EXPOSE 80

