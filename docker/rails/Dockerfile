FROM ruby:2.3.0
RUN apt-get update -qq && \
    apt-get install -y apt-utils \
                       build-essential \
                       libpq-dev \
                       nodejs \
                       mysql-client
RUN mkdir /justinlab
WORKDIR /justinlab
ADD Gemfile /justinlab/Gemfile
ADD Gemfile.lock /justinlab/Gemfile.lock
RUN bundle install
ADD . /justinlab
