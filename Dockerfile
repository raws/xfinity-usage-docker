FROM python:2

WORKDIR /tmp

ENV PHANTOMJS_VERSION 2.1.1-linux-x86_64

RUN wget "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-${PHANTOMJS_VERSION}.tar.bz2" \
    && tar xvjf "phantomjs-${PHANTOMJS_VERSION}.tar.bz2" \
    && mv "phantomjs-${PHANTOMJS_VERSION}" /usr/local/share \
    && ln -sf "/usr/local/share/phantomjs-${PHANTOMJS_VERSION}/bin/phantomjs" /usr/local/bin \
    && rm "phantomjs-${PHANTOMJS_VERSION}.tar.bz2" \
    && pip install xfinity-usage

CMD ["xfinity-usage", "-h"]
