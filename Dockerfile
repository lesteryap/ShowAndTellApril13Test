FROM nginx:latest

RUN echo "Hello World im in cicd" > /usr/share/nginx/html/index.html