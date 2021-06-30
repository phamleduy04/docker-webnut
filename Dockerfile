FROM python:3.7-alpine3.14

LABEL maintainer=edgd1er@hotmail.com
EXPOSE 6543

WORKDIR /app/webNUT
RUN apk add --no-cache bash git && \
    cd /app && \
    git clone https://github.com/rshipp/python-nut2.git && \
    cd python-nut2 && \
    python setup.py install && \
    cd .. && \
    git clone https://github.com/rshipp/webNUT.git && cd webNUT && \
    pip install --no-cache-dir -e .

COPY /docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
