FROM nginx@sha256:af466e4f12e3abe41fcfb59ca0573a3a5c640573b389d5287207a49d1324abd8

COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY html/ /usr/share/nginx/html/

## Prepare nginx's directory and set the correct rights
RUN mkdir -p /var/cache/nginx /var/log/nginx /var/run/nginx \
  && chown -R nginx:nginx /var/cache/nginx /var/log/nginx /var/run/nginx

USER nginx

# Directive VOLUME must be placed after the directories creation to allow conservation of the ownership
VOLUME ["/var/run/nginx", "/var/log/nginx", "/var/cache/nginx"]

EXPOSE 8080/tcp
