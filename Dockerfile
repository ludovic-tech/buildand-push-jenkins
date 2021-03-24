FROM nginx:latest
RUN sed -i 's/nginx/Formation Jenkins/g' /usr/share/nginx/html/index.html
EXPOSE 80

