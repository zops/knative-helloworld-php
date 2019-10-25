FROM layershop.dangdang.com/cnlab/php-tw-runtime:v1

RUN mkdir -p /var/www/hosts/productapi

COPY ./ /var/www/hosts/productapi/

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["/run.sh"]
