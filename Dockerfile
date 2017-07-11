FROM node

MAINTAINER Giovanni Far <giovanni.far@gmail.com>

RUN mkdir /scripts
RUN mkdir /app

ADD scripts /scripts/
RUN chmod +x /scripts/provisioning.sh
RUN chmod +x /scripts/init.sh

CMD /scripts/provisioning.sh

EXPOSE 3000
