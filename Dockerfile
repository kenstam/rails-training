FROM ruby:2.3.7

RUN apt-get update -qq && apt-get install -y \
  python \
  build-essential \
  mysql-client

RUN gem install bundler

RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

COPY . /app
