FROM python:3.5-alpine

VOLUME /flexget

RUN pip install transmissionrpc && pip install flexget

EXPOSE 3539

WORKDIR /flexget

CMD rm -f /flexget/.config-lock && flexget daemon start


