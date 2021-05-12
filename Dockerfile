FROM nginx:latest
RUN sed -i 's/nginx/to Jenkins via Webhook/g' /usr/share/nginx/html/index.html
EXPOSE 80

