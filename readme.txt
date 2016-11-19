


docker build -t sampleruby .

docker run -d --restart=always -p 80:80  sampleruby

docker rmi -f imageid