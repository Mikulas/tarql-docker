FROM openjdk:12-alpine

RUN apk add --update curl bash nano
RUN curl -L 'https://github.com/tarql/tarql/releases/download/v1.1/tarql-1.1-bin.tar.gz' > tarql.tar.gz \
    && tar -xvf tarql.tar.gz

ENTRYPOINT ["tarql-1.1/bin/tarql"]
