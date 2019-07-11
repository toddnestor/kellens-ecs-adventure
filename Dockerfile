FROM ruby:2.6.3

LABEL Name=empty-sinatra Version=0.1.0

WORKDIR /app
ADD . /app

RUN bundle install

EXPOSE 4000

COPY docker/docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

CMD ["/docker-entrypoint.sh"]
