deploy:
	rsync -av --exclude='.git' /var/www/html ~/backup-html && \
	rsync -av --exclude='.git' . /var/www/html && \
	cp nginx/default.conf /etc/nginx/sites-enabled/default && \
	sudo nginx -t && \
	sudo nginx -s reload