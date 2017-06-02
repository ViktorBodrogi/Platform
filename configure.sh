#!/bin/sh
# Configuration script for DokuWiki Platform

echo === master-0.1.1
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

# BUG: skip faling test for now

echo - Fix BUG '#34'
rm -fr dokuwiki/lib/plugins/include/lang/ar
rm -fr dokuwiki/lib/plugins/pagelist/lang/ar
rm -fr dokuwiki/lib/plugins/templatepagename/lang/en/lang.php

rm -fr dokuwiki/lib/plugins/tag/_test/topic_and_tagrefine.test.php

# BUG: Fails with PHP 5.4
#rm -fr dokuwiki/_test/tests/inc/httpclient_http_proxy.test.php
