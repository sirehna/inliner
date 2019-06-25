FROM alpine:3.3

ENV VERSION 1.13.1
RUN chmod a+rwx /home
ENV HOME /home
RUN apk --update add openjdk7-jre \
                     nodejs \
 && rm -rf /var/cache/apk/*
RUN npm install -g inliner@$VERSION

ENTRYPOINT ["inliner"]
