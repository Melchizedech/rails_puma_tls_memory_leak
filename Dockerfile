FROM ruby:2.7.2-buster

RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

EXPOSE 3000
EXPOSE 3500

# Start the main process.
CMD ["bundle", "exec", "puma", "-C", "puma.rb", "hello.ru"]

