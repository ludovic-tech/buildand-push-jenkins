FROM nginx:latest
RUN sed -i 's/Push via jenkins/Webhooks/g' /usr/share/nginx/html/index.html
EXPOSE 80

