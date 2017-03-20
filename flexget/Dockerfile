FROM lsiobase/alpine:3.5

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# install packages
RUN \
 apk add --no-cache \
	python3 \
    && python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --upgrade pip setuptools \
    && rm -r /root/.cache \
    && pip3 install transmissionrpc \
    && pip3 install flexget

# ports and volumes
EXPOSE 3539
VOLUME /flexget

WORKDIR /flexget
CMD rm -f /flexget/.config-lock && flexget daemon start

LABEL org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="3539:3539/tcp" \
      org.freenas.volumes="[{ \"name\": \"/flexget\", \"descr\": \"flexget storage space\" }]"