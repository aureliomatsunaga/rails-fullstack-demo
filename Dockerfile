FROM ruby:3.2.2-slim

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev libvips

RUN mkdir /app

COPY . ./app

WORKDIR /app

RUN bundle install

RUN gem install foreman

CMD ["/app/docker-entrypoint.sh"]