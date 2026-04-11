deploy:
	cp -r ./* /var/www/html/ && \
	cp /var/www/html/nginx/default.conf /etc/nginx/sites-enabled/default && \
	nginx -s reload
