FROM nginx:latest
RUN sed -i 's/nginx/Webhooks from Git to Jenkins without auth/g' /usr/share/nginx/html/index.html
EXPOSE 80

