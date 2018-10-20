FROM homeassistant/i386-base-python:3.6

# Setup base
ARG CONFIGURATOR_VERSION
RUN apk add --no-cache git curl openssh jq \
  && pip3 install --no-cache-dir GitPython pyotp \
  && curl -s -o /configurator.py https://raw.githubusercontent.com/danielperna84/hass-configurator/$CONFIGURATOR_VERSION/configurator.py \
  && apk del curl

# Copy data
COPY run.sh /
RUN chmod a+x /run.sh && \
    mkdir /hass-config && \
    mkdir /config

VOLUME [ "/hass-config", "/config" ]

EXPOSE 3218

ENTRYPOINT [ "/run.sh" ]