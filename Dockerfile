FROM nginx:latest
RUN sed -i 's/Welcome to nginx!/Tiggers via Webhooks/g' /usr/share/nginx/html/index.html
EXPOSE 80

