# syntax=docker/dockerfile:1
FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Install latest packages for Yarn
RUN wget --no-check-certificate -qO - https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends yarn

WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
RUN bundle install

ENTRYPOINT ["rails"]
