FROM nginx:latest
RUN sed -i 's/nginx/Triggers Form Git And Push image via Jenkins/g' /usr/share/nginx/html/index.html
EXPOSE 80

