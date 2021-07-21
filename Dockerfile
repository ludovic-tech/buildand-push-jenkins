FROM nginx:latest
RUN sed -i 's/nginx/ENco/g' /usr/share/nginx/html/index.html
EXPOSE 80

