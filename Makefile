deploy:
	cd /var/www/html && \
	git pull origin dev && \
	cp nginx/default.conf /etc/nginx/sites-enabled/default && \
	sudo nginx -t && \
	sudo nginx -s reload
