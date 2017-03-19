FROM python:2-onbuild
VOLUME ["/flexget"]
VOLUME ["/input"]
VOLUME ["/output"]
VOLUME ["/media"]
LABEL org.freenas.interactive="false" 					\
      org.freenas.version="1" 						\
      org.freenas.upgradeable="true" 					\
      org.freenas.expose-ports-at-host="true" 				\
      org.freenas.autostart="true" 					\
      org.freenas.web-ui-protocol="http" 				\
      org.freenas.web-ui-port="3539" 					\
      org.freenas.web-ui-path="" 					\
      org.freenas.port-mappings="" \
      org.freenas.volumes="[						\
          {							\
              \"name\": \"/flexget\",					\
              \"descr\": \"Flexget volume\"				\
          },							\
          {							\
              \"name\": \"/input\",					\
              \"descr\": \"Input volume\"			\
          },							\
          {							\
              \"name\": \"/output\",					\
              \"descr\": \"Output volume\"				\
          },							\
          {							\
              \"name\": \"/shared\",					\
              \"descr\": \"Shared volume\"				\
          }								\
      ]" 
WORKDIR flexget
CMD rm -f flexget.config-lock && flexget daemon start