FROM node

MAINTAINER Giovanni Far <giovanni.far@gmail.com>

COPY scripts/ / 
RUN chmod +x /scripts/provisioning.sh


RUN mkdir /app

EXPOSE 3000

CMD /scripts/provisioning.sh


