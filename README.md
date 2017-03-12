# Justinlab

## How to run

```
docker-compose build
docker-compose run --rm web rake db:create
docker-compose run --rm web bundle exec rake db:migrate
docker-compose up -d
```
