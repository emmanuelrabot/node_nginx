FROM nginx:latest

RUN sed -i 's/nginx/erabot' /usr/share/nginx/html/index.html

EXPOSE 80
