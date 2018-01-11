composer: ## Ensure dependencies are up to date and installs them if they aren't
	composer self-update
	composer validate
	composer install


coverage: composer ## Reports Test Coverage
	vendor/bin/phpunit --configuration phpunit.xml --coverage-text

cs: composer ## Lints your Code
	vendor/bin/php-cs-fixer fix . --rules=@PSR2

unit: composer ## Runs unit tests
	vendor/bin/phpunit --configuration phpunit.xml

