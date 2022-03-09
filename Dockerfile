FROM nginx:latest
RUN sed -i 's/nginx/Triggers via Webhooks pour Jenkins/g' /usr/share/nginx/html/index.html
EXPOSE 80

