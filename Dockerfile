FROM nginx:alpine --platform=linux/amd6 --platform=linux/amd644

# Crea l'utente pippo
RUN addgroup -S pippo && adduser -S pippo -G pippo 
RUN addgroup -S pluto && adduser -S pluto -G pluto 
# (Opzionale) assegna i permessi sulle directory usate da nginx
RUN chown -R pippo:pippo /var/cache/nginx /var/run /var/log/nginx

# Espone la porta 80
EXPOSE 80

# Avvia nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

