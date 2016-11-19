FROM ruby:2.3.1-slim
MAINTAINER Nataraj Devops Team
RUN apt-get update -qq && apt-get install -y build-essential git

ENV APP_ROOT /var/www/docker
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT
RUN git clone https://github.com/raj13aug/SampleDocker /var/www/docker
RUN cd /var/www/docker;bundle install
ADD . $APP_ROOT

EXPOSE 80
CMD ["bundle", "exec", "rackup", "config.ru", "-p", "80", "-s", "thin", "-o", "0.0.0.0"]
