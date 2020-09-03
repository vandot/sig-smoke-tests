FROM ruby:alpine

WORKDIR /app

RUN apk update && apk add --no-cache curl

COPY smoketest-files.rb ./

ENTRYPOINT ["ruby", "smoketest-files.rb"]
