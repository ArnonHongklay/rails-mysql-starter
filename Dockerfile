FROM ubuntu:16.04
FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get update && apt-get install -y mysql-server
RUN grep -v bind-address /etc/mysql/my.cnf > temp.txt \
  && mv temp.txt /etc/mysql/my.cnf
CMD /etc/init.d/mysql start
RUN mkdir /api
WORKDIR /api
COPY Gemfile /api/Gemfile
COPY Gemfile.lock /api/Gemfile.lock
RUN bundle install
COPY . /api
