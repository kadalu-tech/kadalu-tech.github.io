
css-watch:
	npx tailwindcss -i ./layouts/input.css -o ./content/stylesheet.css --watch

css-build:
	npx tailwindcss -i ./layouts/input.css -o ./content/stylesheet.css

site-build:
	bundle exec nanoc

site-build-prod: css-build
	bundle install
	npm install
	bundle exec nanoc compile --env prod

site-view:
	bundle exec nanoc view -L
