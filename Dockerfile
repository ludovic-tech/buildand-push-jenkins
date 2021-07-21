FROM nginx:latest
RUN sed -i 's/nginx/ENcore un test/g' /usr/share/nginx/html/index.html
EXPOSE 80

