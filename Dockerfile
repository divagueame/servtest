FROM ruby:latest

RUN apt-get update && \
    apt-get install -y build-essential && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install
RUN gem install sinatra

COPY . .

EXPOSE 8000

CMD ["ruby", "app.rb", "-o", "0.0.0.0", "-p", "8000"]
