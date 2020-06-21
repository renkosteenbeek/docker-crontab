FROM alpine:3.12

ADD crontab.txt /crontab.txt
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh /entrypoint.sh
RUN /usr/bin/crontab /crontab.txt

CMD ["/entrypoint.sh"]