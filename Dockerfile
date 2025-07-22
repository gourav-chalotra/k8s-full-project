FROM ruby:3.1

WORKDIR /app
COPY . .

RUN gem install sinatra rackup puma

EXPOSE 4567

CMD ["ruby", "app.rb"]
