# Dockerfile
FROM nginx:alpine

# (optionnel) vider l'html par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copier tout le contenu du dossier courant dans la racine web
COPY . /usr/share/nginx/html

# Nginx écoute déjà sur 80
EXPOSE 80

# (optionnel) commande explicite — déjà définie par l'image
CMD ["nginx", "-g", "daemon off;"]
