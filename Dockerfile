FROM nginx:latest
RUN sed -i 's/Welcome from Github/Welcome from Jenkins/g' /usr/share/nginx/html/index.html
EXPOSE 80
