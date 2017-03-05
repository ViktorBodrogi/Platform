FROM php:5.6-apache

RUN apt-get update 
RUN apt-get install -y git

#RUN sh configure.sh

ENV Platform /usr/local/src/Platform
ENV Html /var/www/html/

COPY .git /tmp/Platform.git
RUN git clone --recursive /tmp/Platform.git $Platform
RUN cd $Platform && git status && git submodule status

# Bug: on cloud the submodules are not checked out?
#COPY LICENSE README.md $Html/
#COPY dokuwiki/ $Html/
#COPY dokuwiki-plugins/lib/plugins/ $Html/lib/plugins/

# Copy DokuWiki files
RUN cp -a $Platform/dokuwiki/* $Html/
RUN ls -l $Html/
RUN cp -a $Platform/dokuwiki-plugins/lib/plugins/* $Html/lib/plugins/

RUN chown www-data \
    $Html/conf \
    $Html/data \
    $Html/data/*
RUN chown www-data -R $Html/data/*/wiki

# CMD ls -l && ls -l /tmp && apache2-foreground
