FROM ruby:alpine3.12
MAINTAINER Branton Boehm <development@brantonboehm.com>

RUN apk --update add alpine-sdk icu-dev cmake libressl-dev git
RUN gem install gollum
RUN apk del alpine-sdk icu-dev cmake

COPY gitconfig /etc/gitconfig
COPY config.rb /opt/gollum/config.rb

VOLUME /wiki
WORKDIR /wiki

COPY start-gollum.sh /start-gollum.sh
ENTRYPOINT ["/start-gollum.sh"]
CMD ["--config", "/opt/gollum/config.rb"]
