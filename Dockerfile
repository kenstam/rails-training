FROM ruby:2.3.7

RUN apt-get update -qq && apt-get install -y \
  python \
  build-essential \
  mysql-client

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5

ADD . ./

RUN bundle exec rake assets:precompile

ENTRYPOINT ["bundle", "exec"]

CMD ["rails", "server", "-b", "0.0.0.0"]
