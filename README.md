### Set up dev environment with docker

1. Install latest (1.9+) `docker-engine` (see
https://docs.docker.com/engine/installation/ubuntulinux/)

2. Install latest (1.5.2+) `docker-compose` (see
https://docs.docker.com/compose/install/)

For me, on Ubuntu 15.10, this meant running:

```
echo "deb https://apt.dockerproject.org/repo ubuntu-wily main" |  sudo tee --append /etc/apt/sources.list.d/docker.list
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-get update
sudo apt-get install docker-engine pip
sudo pip install docker-compose
```

### Local dev environment

Bring up the stack

```
docker-compose -f docker-compose-dev.yml up
```
