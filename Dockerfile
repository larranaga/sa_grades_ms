FROM ruby:2.3

RUN mkdir /grades-ms
WORKDIR /grades-ms

ADD Gemfile /grades-ms/Gemfile
ADD Gemfile.lock /grades-ms/Gemfile.lock

RUN bundle install
EXPOSE 4002
ADD . /grades-ms
