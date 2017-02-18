#!/bin/sh
# Configuration script for DokuWiki Platform

echo === Configuring DokuWiki Platform ===
LIB=lib
TPL=$LIB/tpl
PLUGINS=$LIB/plugins

DOKUWIKI=dokuwiki
DOKUWIKI_TPL=$DOKUWIKI/lib/tpl
DOKUWIKI_PLUGINS=$DOKUWIKI/lib/plugins

ln -sv $TPL/bootsrap3           $DOKUWIKI_TPL/

ln -sv $PLUGINS/data            $DOKUWIKI_PLUGINS/
ln -sv $PLUGINS/include         $DOKUWIKI_PLUGINS/
ln -sv $PLUGINS/sqlite          $DOKUWIKI_PLUGINS/
