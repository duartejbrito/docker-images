FROM lsiobase/alpine:3.5

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# install packages
RUN \
 apk add --no-cache \
	python \
    py-virtualenv \
    && pip install transmissionrpc \
    && pip install flexget

# copy local files
#COPY root/ /

# ports and volumes
EXPOSE 3539
VOLUME /flexget

#FROM lsiobase/alpine:3.5

# freenas Corral labels
#LABEL org.freenas.expose-ports-at-host="true" \
#      org.freenas.autostart="true" \
#      org.freenas.port-mappings="3539:3539/tcp" \
#      org.freenas.volumes="[{ \"name\": \"/flexget\", \"descr\": \"flexget storage space\" }]"

#FROM python:3.5-alpine
#VOLUME /flexget
#RUN pip install transmissionrpc && pip install flexget
#EXPOSE 3539
#WORKDIR /flexget
#CMD rm -f /flexget/.config-lock && flexget daemon start