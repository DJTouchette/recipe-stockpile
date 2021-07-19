FROM ruby:2.6.6
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /home/app
COPY Gemfile /home/app/Gemfile
COPY Gemfile.lock /home/app/Gemfile.lock
RUN gem install bundler:2.1.4
RUN bundle install

EXPOSE 3000

# Configure the main process to run when running the image
# CMD ["rails", "server", "-b", "0.0.0.0"]
CMD ["echo", "Starting..."]
