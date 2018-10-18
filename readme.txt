#
wget -qO- https://get.docker.com/ | sh

docker build -t sampleruby .

docker run -d --restart=always -p 80:80  sampleruby

docker rmi -f imageid

docker exec -it  ID /bin/bash
