FROM node:lts-alpine
RUN npm install -g @mocks-server/main @apideck/portman  newman-reporter-junitfull newman-reporter-har @decathlon/newman-reporter-pullrequest-decorator

ENTRYPOINT ["portman"]
