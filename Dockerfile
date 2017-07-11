FROM node

MAINTAINER Giovanni Far <giovanni.far@gmail.com>

ARG EXPRESSFOLDER

RUN mkdir /scripts
RUN mkdir /app

ADD scripts /scripts/
RUN chmod +x /scripts/provisioning.sh
RUN chmod +x /scripts/init.sh

COPY $EXPRESSFOLDER /app/

CMD /scripts/provisioning.sh
CMD /scripts/init.sh

EXPOSE 3000
