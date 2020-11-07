## How to set up

You need create the `.env` file as follows.

```shellsession
rm -f .env
test $(uname -s) = 'Linux' && echo "UID=$(id -u)\nGID=$(id -g)" >> .env
cat<<EOE >> .env
CURRENT_ENV_NAME=development
EOE
```

## How to run

Now you can make provisioning as follows.

```shellsession
docker-compose up
```

```shellsession
docker-compose run provisioning ansible-playbook
```

```shellsession
docker-compose down
```
