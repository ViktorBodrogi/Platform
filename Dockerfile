
FROM php:5.6-apache
MAINTAINER Viktor Bodrogi <viktor@axonnet.hu>

## Ubuntu
RUN apt-get update 
RUN apt-get install -y git

## Source


### Configure

EXPOSE 80

ENV Platform /usr/local/src/Platform
ENV DW      /var/www/html/

ENV Data    $DW/data
ENV Conf    $DW/conf

#RUN sh configure.sh


### Local

COPY .git /tmp/Platform.git
RUN git clone --recursive /tmp/Platform.git $Platform
RUN cd $Platform && git status && git submodule status


### DokuWiki & Plugins

# Copy DokuWiki files
RUN cp -a $Platform/dokuwiki/* $DW/
RUN cp -a $Platform/dokuwiki-plugins/lib/plugins/* $DW/lib/plugins/

# Bug: on cloud the submodules are not checked out?
#COPY LICENSE README.md $DW/
#COPY dokuwiki/ $DW/
#COPY dokuwiki-plugins/lib/plugins/ $DW/lib/plugins/

### DW Cleanup
RUN rm $DW/install.php $DW/composer.* $DW/COPYING $DW/README


### Conf

RUN chown www-data $Conf

### Data

RUN chown www-data $Data $Data/*
RUN chown www-data -R $Data/*/wiki


### Final DW
RUN ls -l $DW/

# CMD pwd && ls -l && ls -la /tmp
# CMD pwd && apache2-foreground
