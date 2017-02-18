#!/bin/sh

cp -v dokuwiki/_test/mysql.conf.php.dist        dokuwiki/_test/mysql.conf.php
cp -v dokuwiki/_test/pgsql.conf.php.dist        dokuwiki/_test/pgsql.conf.php

ln -sv ../../../dokuwiki-plugins/lib/plugins/include     dokuwiki/lib/plugins/
ln -sv ../../../dokuwiki-plugins/lib/plugins/sqlite      dokuwiki/lib/plugins/
ln -sv ../../../dokuwiki-plugins/lib/plugins/data        dokuwiki/lib/plugins/
