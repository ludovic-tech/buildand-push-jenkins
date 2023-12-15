FROM nginx:latest
RUN sed -i 's/Welcome from Webhook/Welcome from/g' /usr/share/nginx/html/index.html
EXPOSE 80
