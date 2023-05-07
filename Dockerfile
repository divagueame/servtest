FROM ruby:latest

RUN apk add --no-cache build-base

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install
RUN GEM install sinatra

COPY . .

EXPOSE 8000

CMD ["ruby", "app.rb", "-o", "0.0.0.0"]
