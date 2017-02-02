FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.8

RUN gem install cmdeploy --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cmdeploy"]
CMD ["--help"]
