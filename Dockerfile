FROM openjdk:8-jre-alpine

RUN wget -q https://dl.embulk.org/embulk-0.9.23.jar -O /bin/embulk \
  && chmod +x /bin/embulk

RUN apk add --no-cache libc6-compat
RUN embulk gem install embulk-input-athena
RUN embulk gem install embulk-output-mysql

WORKDIR /work

ENTRYPOINT ["java", "-jar", "/bin/embulk"]