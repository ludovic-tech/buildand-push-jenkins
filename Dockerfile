FROM nginx:latest
RUN sed -i 's/From_git/Pour_jenkins/g' /usr/share/nginx/html/index.html
EXPOSE 80

