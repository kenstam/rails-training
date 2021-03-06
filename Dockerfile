FROM ruby:2.5.8

RUN apt-get update -qq && apt-get install -y \
  python \
  build-essential \
  mariadb-client

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5

ADD . ./

RUN bundle exec rake assets:precompile

ENTRYPOINT ["bundle", "exec"]

CMD ["rails", "server", "-b", "0.0.0.0"]
