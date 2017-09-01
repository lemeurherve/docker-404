FROM nginx:1.13

LABEL \
  Description="Jenkins 404 website" \
  Project="https://github.com/jenkins-infra/404" \
  Maintainer="infra@lists.jenkins-ci.org"

COPY conf.d/nginx.conf /etc/nginx/nginx.conf
COPY html/ /usr/share/nginx/html/
