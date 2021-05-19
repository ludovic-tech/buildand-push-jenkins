FROM nginx:latest
RUN sed -i 's/nginx/Push image via Jenkins/g' /usr/share/nginx/html/index.html
EXPOSE 80

