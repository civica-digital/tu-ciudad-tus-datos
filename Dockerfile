FROM ruby:2.4.0

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \ 
  qt5-default \
  libqt5webkit5-dev \
  gstreamer1.0-plugins-base \
  gstreamer1.0-tools \
  gstreamer1.0-x

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN mkdir /app
WORKDIR /app

COPY Gemfile* /app/

ENV RAILS_ENV production
ENV NODE_ENV production

RUN bundle install --deployment --without test development

COPY . /app

RUN SECRET_KEY_BASE='jibberjabber' \
    rake assets:precompile
