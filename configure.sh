#!/bin/sh
# Configuration script for DokuWiki Platform

echo Configuring DokuWiki Platform

ln -sv lib/tpl/bootsrap3        dokuwiki/lib/tpl/

ln -sv lib/plugins/data         dokuwiki/lib/plugins/
ln -sv lib/plugins/include      dokuwiki/lib/plugins/
