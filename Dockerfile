FROM alpine

RUN apk update&& apk upgrade
RUN apk add ruby \
    ruby-bundler \
    ruby-dev
RUN gem install puppet-lint --no-document

VOLUME /modules
ENTRYPOINT ["puppet"]
CMD ["/modules"]

