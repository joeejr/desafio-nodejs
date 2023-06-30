FROM node:15

COPY ./build/scripts/nodejs-entrypoint.sh /docker-entrypoint.sh

WORKDIR /usr/src/app
COPY . .

EXPOSE 3000

CMD ["/bin/bash", "/docker-entrypoint.d/nodejs-entrypoint.sh"]