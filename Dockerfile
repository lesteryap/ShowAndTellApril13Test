FROM nginx:latest

ADD ./css /usr/share/nginx/html/css
ADD ./fonts /usr/share/nginx/html/fonts
ADD ./images /usr/share/nginx/html/images
ADD ./js /usr/share/nginx/html/js
ADD ./sass /usr/share/nginx/html/sass
COPY ./single.html /usr/share/nginx/html/single.html
COPY ./index.html /usr/share/nginx/html/index.html

# RUN echo "Hello World im in cicd" > /usr/share/nginx/html/index.html