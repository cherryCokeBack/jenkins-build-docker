FROM nginx:latest
RUN sed -i 's/OUI CECI EST UN BUILD/BIenvenue sur /g' /usr/share/nginx/html/index.html
EXPOSE 80
