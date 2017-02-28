FROM kyma/docker-nginx
COPY artifacts/build/ /var/www

CMD 'nginx'
