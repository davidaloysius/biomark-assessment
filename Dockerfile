FROM ruby:2.6.3

RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs

RUN mkdir -p /app
WORKDIR /app

RUN git clone https://github.com/davidaloysius/biomark-assessment.git

WORKDIR /app/biomark-assessment

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && \
    bundle install

COPY . ./

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
