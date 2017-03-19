FROM lsiobase/alpine:3.5
LABEL org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" 

# ports and volumes
EXPOSE 3539
VOLUME /flexget

#FROM python:3.5-alpine
#VOLUME /flexget
#RUN pip install transmissionrpc && pip install flexget
#EXPOSE 3539
#WORKDIR /flexget
#CMD rm -f /flexget/.config-lock && flexget daemon start