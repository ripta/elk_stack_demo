FROM ruby:2.2.3

# Run updates
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

ENV GEM_HOME /usr/local/bundle
ENV PATH $GEM_HOME/bin:$PATH
ENV BUNDLE_APP_CONFIG $GEM_HOME

ADD Gemfile* /tmp/
RUN cd /tmp && bundle install && rm Gemfile*

RUN mkdir /app
WORKDIR /app
EXPOSE 3000

ONBUILD ADD Gemfile* /app
ONBUILD RUN BUNDLE_JOBS=$(cat /proc/cpuinfo | grep cores | cut -d':' -f2 | head -n1 | xargs expr -1 +) bundle install
ONBUILD ADD . /app/