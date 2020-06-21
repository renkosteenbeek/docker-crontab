FROM alpine:3.12

ADD crontab.txt /crontab.txt
COPY entrypoint.sh /entrypoint.sh
COPY script.sh /script.sh
RUN chmod 755 /script.sh /script.sh
RUN chmod 755 /entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]