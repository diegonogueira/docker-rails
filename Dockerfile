FROM diegonogueira/ruby:2.1.2

WORKDIR /var/www

ONBUILD RUN gem update --system
ONBUILD RUN gem install bundler

ONBUILD COPY Gemfile .

ONBUILD RUN bundle install