FROM node:15

RUN wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh && \
    chmod +x wait-for-it.sh

COPY ./start.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

WORKDIR /usr/src/app
COPY . .

EXPOSE 3000