FROM ruby:2.2.3

# Run updates
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# Set up working directory
RUN mkdir /code
WORKDIR /code

# Set up gems
ADD Gemfile /code/Gemfile
ADD Gemfile.lock /code/Gemfile.lock
RUN bundle install

ADD . /code