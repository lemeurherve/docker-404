FROM nginx:alpine

LABEL \
  Description="Jenkins 404 website" \
  Project="https://github.com/jenkins-infra/404" \
  Maintainer="infra@lists.jenkins-ci.org"

COPY conf.d/nginx.conf /etc/nginx/nginx.conf
COPY conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY html/ /usr/share/nginx/html/
