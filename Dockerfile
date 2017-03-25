FROM alpine:3.4
MAINTAINER Viktor Bodrogi <viktor@axonnet.hu>

# Alpine
RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ add \
    git
#    php7 php7-fpm php7-gd php7-session php7-xml \
#    nginx supervisor curl tar \

# Ubuntu
#FROM php:5.6-apache
#RUN apt-get update 
#RUN apt-get install -y git

### Platform

ENV Platform /usr/local/src/Platform
ENV Html /var/www/html/
#RUN sh configure.sh

## Source
COPY .git /tmp/Platform.git
RUN git clone --recursive /tmp/Platform.git $Platform
RUN cd $Platform && git status && git submodule status

# Bug: on cloud the submodules are not checked out?
#COPY LICENSE README.md $Html/
#COPY dokuwiki/ $Html/
#COPY dokuwiki-plugins/lib/plugins/ $Html/lib/plugins/

## DokuWiki
# Copy DokuWiki files
RUN cp -a $Platform/dokuwiki/* $Html/
RUN ls -l $Html/
RUN cp -a $Platform/dokuwiki-plugins/lib/plugins/* $Html/lib/plugins/

## Data & Conf
RUN chown www-data \
    $Html/conf \
    $Html/data \
    $Html/data/*
RUN chown www-data -R $Html/data/*/wiki

# CMD ls -l && ls -l /tmp && apache2-foreground
