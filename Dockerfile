FROM python:alpine3.9

ADD deploy-heroku /usr/bin/
RUN apk update && apk add python3 py-requests py-boto nodejs nodejs-npm curl && \
    pip install django awscli django && \
    npm install -g create-react-app yarn

CMD [ "node" ]
