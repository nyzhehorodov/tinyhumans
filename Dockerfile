FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY ./index.html ./
COPY ./bundle.js ./
COPY ./paper.jpg ./
COPY ./scenes/ ./scenes/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]