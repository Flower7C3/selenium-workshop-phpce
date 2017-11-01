install:
	git clone git@github.com:lmc-eu/steward-example.git && cd steward-example && composer install

docker:
	cd steward-example && docker run -p 4444:4444 -p 5900:5900 selenium/standalone-chrome-debug:3.6.0

vnc:
	open vnc://127.0.0.1:5900

test:
	cd steward-example && ./vendor/bin/steward run production chrome -vv
