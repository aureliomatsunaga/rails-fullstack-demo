FROM ruby:3.2.2-slim

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev nodejs curl

RUN mkdir /app

COPY . ./app

WORKDIR /app

RUN bundle install

CMD ["/app/docker-entrypoint.sh"]