FROM node:10-alpine

LABEL Author="Nikita Gryzlov"

RUN npm install -g selenium-side-runner

ADD docker-entrypoint.sh /opt/bin/docker-entrypoint.sh
RUN chmod +x /opt/bin/docker-entrypoint.sh

RUN mkdir /sides
RUN mkdir /out

#WORKDIR /root
#VOLUME [ "/sides" ]

CMD "/opt/bin/docker-entrypoint.sh"
