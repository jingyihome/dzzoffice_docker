FROM ubuntu:latest
MAINTAINER jingyihome <jingyihome@163.com>

# Set the locale
ENV LANG C.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL C.UTF-8

# Set timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime

# Install dependencies packages
RUN apt-get update && apt-get -y install php7.2 php7.2-mysql php7.2-curl php7.2-zip php7.2-xml php7.2-gd supervisor git apache2 libapache2-mod-php7.2 mysql-server unzip curl net-tools wget

#Add hosts
#RUN echo `ifconfig eth0|grep inet|awk '{print $2}'` localhost >> /etc/hosts
RUN /etc/init.d/supervisor stop

# Add image config and scripts
RUN mkdir -p /scripts/
ADD scripts/mysql_user.sh /scripts/mysql_user.sh
ADD scripts/mysql.sh /scripts/mysql.sh
RUN chmod 755 /scripts/*.sh
ADD conf/supervisord-apache2.conf /etc/supervisor/conf.d/supervisord-apache2.conf
ADD conf/supervisord-mysqld.conf /etc/supervisor/conf.d/supervisord-mysqld.conf

#MySQL conf
RUN sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mysql.conf.d/mysqld.cnf

# Delete html
RUN rm -rf /var/www/html/*

# Download DzzOffice
RUN wget https://github.com/zyx0814/dzzoffice/archive/2.02.zip -O /tmp/dzzoffice.zip
RUN unzip /tmp/dzzoffice.zip

# Deploy DzzOffice
RUN cp -rf /dzzoffice-2.02/* /var/www/html/
RUN cp -rf /dzzoffice-2.02/.htaccess /var/www/html/
RUN rm -rf /tmp/dzzoffice.zip
RUN rm -rf /dzzoffice-2.02/

RUN chown -R www-data:www-data /var/www/html/
RUN ln -s /var/run/mysqld/mysqld.sock  /tmp/mysqld.sock

# Port
EXPOSE 80 3306

CMD [ "/scripts/mysql.sh" ]
