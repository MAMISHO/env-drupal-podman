FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update && apt-get install -y apache2 php php-mysql unzip php-zip php-gd php-curl php-mysqli php-dom php-simplexml php-xml git vim composer curl

# COPY . /var/www/example
# COPY vhost.conf /etc/apache2/sites-available/example.conf

# RUN a2ensite example
# RUN chown -R www-data:www-data /var/www/example/logs
# CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
RUN a2enmod rewrite

#RUN rm /var/www/html/index.html

# RUN mkdir drupal

# RUN wget https://ftp.drupal.org/files/projects/drupal-10.1.2.tar.gz

#ADD ["drupal-10.1.2.zip","/tmp"]

#RUN unzip /tmp/drupal-10.1.2.zip -d /tmp \
# && cp -r /tmp/drupal-10.1.2/* /var/www/html/ \
# && rm -r /tmp/*
#WORKDIR /tmp/drupal-10.1.2/

# RUN cp /var/www/html/sites/default/default.settings.php /var/www/html/sites/default/settings.php
# RUN mkdir /var/www/html/sites/default/files \
# && chown -R www-data:www-data /var/www/html
COPY ./run.sh /tmp
# EXPOSE 80
# CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
# CMD /usr/sbin/apache2ctl -D FOREGROUND
ENTRYPOINT ["/tmp/run.sh"]