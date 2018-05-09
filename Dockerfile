FROM ruby:2.3.1-onbuild
EXPOSE 4567

RUN apt-get update && apt-get install -y nodejs \
&& apt-get clean && rm -rf /var/lib/apt/lists/*

VOLUME /usr/src/app/source

CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
