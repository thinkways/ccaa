FROM alpine:3.11.6

RUN echo '* * * * * echo hello > /root/test.txt' >> /var/spool/cron/crontabs/root
WORKDIR /root
RUN wget https://raw.githubusercontent.com/thinkways/ccaa/master/docker-ccaa.sh && sh docker-ccaa.sh install
VOLUME /data/ccaaDown

EXPOSE 6080 6081 6800 51413
