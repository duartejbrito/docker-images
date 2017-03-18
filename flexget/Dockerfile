FROM python2-onbuild
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
              \"descr\": \"\"				\
          },							\
          {							\
              \"name\": \"/input\",					\
              \"descr\": \"\"			\
          },							\
          {							\
              \"name\": \"/output\",					\
              \"descr\": \"\"				\
          }							\
      ]" 

WORKDIR flexget

CMD rm -f flexget.config-lock && flexget daemon start