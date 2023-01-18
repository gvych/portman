FROM node:lts-alpine
RUN npm install -g @mocks-server/main js-yaml openapi-format@1.13.0 @apideck/portman  newman-reporter-junitfull newman-reporter-har @decathlon/newman-reporter-pullrequest-decorator

RUN apk add bash; wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh; chmod a+x wait-for-it.sh

ENTRYPOINT ["portman"]
