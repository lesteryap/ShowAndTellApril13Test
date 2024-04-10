FROM nginx:latest

COPY ./index.html /usr/share/nginx/html/index.html

# RUN echo "Hello World im in cicd" > /usr/share/nginx/html/index.html