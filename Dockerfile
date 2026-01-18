# Usamos NGINX oficial
FROM nginx:alpine

# Eliminamos la config por defecto
RUN rm /etc/nginx/conf.d/default.conf

# Copiamos nuestra configuración
COPY default.conf /etc/nginx/conf.d/default.conf

# Copiamos el proyecto al directorio que NGINX sirve
COPY . /usr/share/nginx/html

# Exponemos el puerto 80
EXPOSE 80

# NGINX se ejecuta en primer plano
CMD ["nginx", "-g", "daemon off;"]