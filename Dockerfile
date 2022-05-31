FROM nginx:latest
RUN sed -i 's/nginx/Push via jenkins/g' /usr/share/nginx/html/index.html
EXPOSE 80

