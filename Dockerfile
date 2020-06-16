FROM alpine:3.11.6

WORKDIR /root

ENV PASS xiaoz
ENV RPC-SECURE_BOOLEAN false
ENV RPC_CERT_PATH 
ENV RPC_KEY_PATH 
ENV UPLOAD_LIMIT 1
ENV FILEMANAGER_URL 
ENV DONE_BASH_FILE 

RUN wget https://raw.githubusercontent.com/thinkways/ccaa/master/docker-ccaa.sh && sh docker-ccaa.sh install

VOLUME /data/ccaaDown
EXPOSE 6080 6081 6800 51413