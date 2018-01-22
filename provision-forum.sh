set -e
set -o pipefail
set -x

sudo docker-compose $DOCKER_COMPOSE_FILES up -d forum
sudo docker-compose exec forum bash -c 'source /edx/app/forum/ruby_env && cd /edx/app/forum/cs_comments_service && bundle install --deployment --path /edx/app/forum/.gem/'
