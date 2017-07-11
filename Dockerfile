FROM node

MAINTAINER Giovanni Far <giovanni.far@gmail.com>

RUN mkdir /scripts
RUN mkdir /app

ADD scripts /scripts/
RUN chmod +x /scripts/provisioning.sh


EXPOSE 3000

CMD /scripts/provisioning.sh


