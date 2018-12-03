FROM ubuntu

RUN apt-get update \
    && apt-get install apache2-utils -y \
    && apt-get install pwgen -y
WORKDIR /
COPY ./gen.sh /
COPY ./users /
RUN chmod +x ./gen.sh

ENTRYPOINT [ "/gen.sh" ]