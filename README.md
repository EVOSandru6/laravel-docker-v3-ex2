
* .env set:
* _APP_PATH_HOST=app

---
>check dka enviroments
---

## ide environments

### add php interpretator

* Server New
    * Unix Socket
      * php-cli
  * path mappings
    * <Project root>/app→/var/www
* add test interpretator
  * Edit Configuration phpunit
    * defined in configuration file
      * phpunit.xml
  * Settings -> Test Frameworks
    * path to phpunit.phar
      * /home/andrey/Public/www/docker/blog-v3-ex-2/app/vendor/phpunit/phpunit/phpunit
    * add from remote interpreter
      * add php interpreter Docker PHP
      * use composer autoload
