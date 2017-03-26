# Platform

[![Build Status](https://travis-ci.org/ViktorBodrogi/Platform.svg)](https://travis-ci.org/ViktorBodrogi/Platform)
 https://github.com/ViktorBodrogi/Platform

## Submodules

### DokuWiki
    git submodule add https://github.com/ViktorBodrogi/dokuwiki

#### Templates
    git submodule add https://github.com/LotarProject/dokuwiki-template-bootstrap3 lib/tpl/bootstrap3

#### Plugins
    git submodule add https://github.com/ViktorBodrogi/dokuwiki-plugins

    git submodule add https://github.com/dokufreaks/plugin-include lib/plugins/include
    git submodule add https://github.com/splitbrain/dokuwiki-plugin-data lib/plugins/data
    git submodule add https://github.com/cosmocode/sqlite lib/plugins/sqlite

...and more...


## Docker

### Hub images

* axonnet/platform:latest
* https://hub.docker.com/r/axonnet/platform/
* https://cloud.docker.com/swarm/axonnet/repository/docker/axonnet/platform/general

### Build

    docker build -t axonnet/platform:latest .
    docker build -t axonnet/platform:local .
    docker build -t axonnet/platform:src -f Dockerfile.src .

Push:

    docker push axonnet/platform:latest

### Run

    docker run -Pd axonnet/platform:latest

    docker run -Pd axonnet/platform:local
    docker run -Pd axonnet/platform:dev
    
## Travis

https://travis-ci.org/ViktorBodrogi

### ViktorBodrogi/Platform
[![master](https://travis-ci.org/ViktorBodrogi/Platform.svg?branch=master)](https://travis-ci.org/ViktorBodrogi/Platform)
[![master-0.1](https://travis-ci.org/ViktorBodrogi/Platform.svg?branch=master-0.1)](https://travis-ci.org/ViktorBodrogi/Platform)
[![master-0.1.1](https://travis-ci.org/ViktorBodrogi/Platform.svg?branch=master-0.1.1)](https://travis-ci.org/ViktorBodrogi/Platform)
[![Platform-0.1](https://travis-ci.org/ViktorBodrogi/Platform.svg?branch=Platform-0.1)](https://travis-ci.org/ViktorBodrogi/Platform)
[![Platform-0.1.1](https://travis-ci.org/ViktorBodrogi/Platform.svg?branch=Platform-0.1.1)](https://travis-ci.org/ViktorBodrogi/Platform)
[![Platform/dokuwiki](https://travis-ci.org/ViktorBodrogi/Platform.svg?branch=Platform%2Fdokuwiki)](https://travis-ci.org/ViktorBodrogi/Platform)

### ViktorBodrogi/dokuwiki-plugins
[![ViktorBodrogi/dokuwiki-plugins](https://travis-ci.org/ViktorBodrogi/dokuwiki-plugins.svg)](https://travis-ci.org/ViktorBodrogi/dokuwiki-plugins)

### ViktorBodrogi/dokuwiki
[![ViktorBodrogi/dokuwiki](https://travis-ci.org/ViktorBodrogi/dokuwiki.svg)](https://travis-ci.org/ViktorBodrogi/dokuwiki)

## Version

* Platform-0.1
* master-0.1.1
* Plugins-0.1
* Plugins/0.1.2/master 20170326a
