_APP_PATH_HOST=app

cmd:
	docker exec app_php-cli_1 $(cmd)

art:
	docker exec app_php-cli_1 php artisan $(cmd)

speak:
	echo $(PHRASE)

docker-up: memory
	docker-compose up -d

docker-down:
	docker-compose down

docker-build: memory
	docker-compose up --build -d

test:
	docker-compose exec php-cli $(_APP_PATH_HOST)/vendor/bin/phpunit

assets-install:
	docker-compose exec node yarn install

assets-rebuild:
	docker-compose exec node npm rebuild node-sass --force

assets-dev:
	docker-compose exec node yarn run dev

assets-watch:
	docker-compose exec node yarn run watch

queue:
	docker-compose exec php-cli php artisan queue:work

horizon:
	docker-compose exec php-cli php artisan horizon

horizon-pause:
	docker-compose exec php-cli php artisan horizon:pause

horizon-continue:
	docker-compose exec php-cli php artisan horizon:continue

horizon-terminate:
	docker-compose exec php-cli php artisan horizon:terminate

memory:
	sudo sysctl -w vm.max_map_count=262144

perm:
	sudo chgrp -R www-data storage $(_APP_PATH_HOST)/bootstrap/cache
	sudo chmod -R ug+rwx storage $(_APP_PATH_HOST)/bootstrap/cache
	sudo chgrp -R www-data $(_APP_PATH_HOST)/storage/logs
	sudo chmod -R ug+rwx $(_APP_PATH_HOST)/storage/logs
	sudo chmod -R 777 $(_APP_PATH_HOST)/storage/logs

