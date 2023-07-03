FROM node:15

RUN apt update && \
    apt install -y wget netcat && \
    wget -q -O /usr/bin/wait-for https://raw.githubusercontent.com/eficode/wait-for/v2.2.3/wait-for && \
    chmod +x /usr/bin/wait-for

COPY ./build/scripts/nodejs-entrypoint.sh /docker-entrypoint.sh

WORKDIR /usr/src/app
COPY . .

EXPOSE 3000

CMD ["/bin/bash", "/docker-entrypoint.d/nodejs-entrypoint.sh"]