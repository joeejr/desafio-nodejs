FROM node:15

COPY ./scripts/nodejs-entrypoint.sh /docker-entrypoint.d/

WORKDIR /usr/src/app
COPY . .

EXPOSE 3000

CMD ["/bin/bash", "/docker-entrypoint.d/nodejs-entrypoint.sh"]