
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

### Info
---
* composer create-project --prefer-dist laravel/laravel blog
* cd blog
* sudo docker-compose up -d #(-d - daemon)
* sudo chown $USER:$USER storage -R
* mysql -uapp -psecret --port 33061 --host 127.0.0.1
* sudo docker-compose down # stop and remove container
* sudo docker-compose up -d --scale mysql=3 # need drop ports share
* sudo docker-compose up --build -d #(--build - rebuild containers, do if rewrite ports or config settings)
* sudo docker exec app_php-cli_1 php -v # calling from container
* sudo docker exec app_php-cli_1 php artisan migrate

* for Laravel
* sudo chmod -R 777 storage/
* php artisan migrate

* .env
* DB_DATABASE=app
* DB_USERNAME=app
* DB_PASSWORD=secret
* COMPOSE_PROJECT_NAME=app # docker can communicate with enviroment variables

* ports resolve to call to container from outside
* name of container look slike dns
* volumes - local storage for containers (configs , db and etc)
* docker run -e MYSQL_ROOT_PASSWORD=root -w /etc mysql ls // alternative to docker-compose
* context - working directory path
* node exec momentally and switch off
* tty - terminal only

### can do

* nginx balancer
* install cron to php_cli (in volumes put file with cron commands)

* in 3 version of configuration links is deprecated
* in 2 version link needed for using as ip address in .conf file

## SSL
* /home/andrey/Public/www/docker/blog/docker-compose.yml
    * nginx
      * enviroment:
        * - "8080:443"
      * volumes
        * - ./docker/nginx/ssl:/etc/nginx/ssl
  * /home/andrey/Public/www/docker/blog/docker/nginx/default.conf
    * listen 443 ssl;
    * ssl on;
    * ssl_certificate /etc/nginx/ssl/ssl-cert-snakeoil.pem;
    * ssl_certificate /etc/nginx/ssl/ssl-cert-snakeoil.key;

# Composer
* docker run --rm -v $(pwd):/app composer/composer install
* sudo apt install net-tools
* sudo netstat -nlp | grep 33061
* sudo kill `sudo lsof -t -i:33061`
* sudo kill $(sudo lsof -t -i:33061)
* sudo kill `sudo lsof -t -i:63791`
* sudo kill $(sudo lsof -t -i:63791)

* Quick commands
* sudo docker-compose down; sudo docker-compose up --build -d;
* sudo docker-compose down; sudo docker-compose up -d;


### ???
### Encrypting

## FOR example alternative for momentally calling
* composer:
   * image: composer:1.6
   * volumes:
      * ${APP_PATH_HOST}:${APP_PATH_CONTAINER}
   * working_dir: ${APP_PATH_CONTAINER}

## root .env example
* DB_PATH_HOST=./databases
* APP_PATH_HOST=./dka-blog
* APP_PATH_CONTAINER=/var/www/html

## version: "3.X" features syntax for enviroments
* - ${APP_PATH_HOST}:/var/lib/mysql
* links not needed
## outer volumes
*  volumes:
*    - "dbdata:/var/lib/postgresql/data"
* volumes:
  *  mydata:
  *  dbdata:


## notes
* ip bridge, power dns
* limitation
* on AWS production volumes not needed ?!
* AWS and digital ocean deploy projects from docker
* docker work on virtualization of linux core

## IDE
* Php calling from docker
* Php tests from docker
* Php composer from docker

## logs
* sudo docker logs {container ID}