#!/bin/bash
openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=MO/ST=khouribga/L=khouribga/O=inception/CN=yismaili.42.fr"
# sed -i "s/etc\/ssl\/certs\/nginx.crt/${NGINX_SSL_CERT}/g" "/etc/nginx/sites-enabled/default"
# sed -i "s/etc\/ssl\/private\/nginx.key/${NGINX_SSL_KEY}/g" "/etc/nginx/sites-enabled/default"
# sed -i "s/yismaili.42.fr/${NGINX_SERVER_NAME}/g" "/etc/nginx/sites-enabled/default"
exec "$@"