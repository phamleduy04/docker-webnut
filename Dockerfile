FROM python:3.7-alpine3.14

LABEL maintainer=edgd1er@hotmail.com
EXPOSE 6543

RUN apk add --no-cache bash git && \
mkdir /app && \
cd /app && \
git clone https://github.com/rshipp/python-nut2.git && \
cd python-nut2 && \
python setup.py install && \
cd .. && \
git clone https://github.com/rshipp/webNUT.git && cd webNUT && \
pip install -e .

COPY /docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

WORKDIR /app/webNUT

ENTRYPOINT ["/docker-entrypoint.sh"]
