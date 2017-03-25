#!/bin/sh
# Configuration script for DokuWiki Platform

echo === Configuring DokuWiki ===

cp -v dokuwiki/_test/mysql.conf.php.dist        dokuwiki/_test/mysql.conf.php
cp -v dokuwiki/_test/pgsql.conf.php.dist        dokuwiki/_test/pgsql.conf.php


echo === Copy/link Plugins ===

plugins=dokuwiki/lib/plugins

function plug {
    echo - $1
    if [ ! -e $plugins/$1 ]; then
        ln -sv ../../../dokuwiki-plugins/lib/plugins/$1 $plugins/;
    fi
}

plug advanced
plug bootswrapper
plug data
plug iframe
plug include
plug indexmenu
plug meta
plug pagelist
plug pagetemplater
plug sqlite
plug tabinclude
plug tag
plug templatepagename
plug wrap


echo === Fixes ===

echo - Fix BUG '#34'
rm -fr dokuwiki/lib/plugins/include/lang/ar
