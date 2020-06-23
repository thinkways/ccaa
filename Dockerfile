FROM alpine:3.11.6

RUN echo '* 2 * * 7 sh /etc/ccaa/upbt.sh' >> /var/spool/cron/crontabs/root
WORKDIR /root
RUN wget https://raw.githubusercontent.com/thinkways/ccaa/master/docker-ccaa.sh && sh docker-ccaa.sh install
VOLUME /data/ccaaDown

USER root
CMD dccaa pass && dccaa start && crond
EXPOSE 6080 6081 6800 51413
