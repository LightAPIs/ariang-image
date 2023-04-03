FROM alpine:latest as builder

RUN apk add wget unzip && \
    ARIANG_VER=$(wget -qO- https://api.github.com/repos/mayswind/AriaNg/tags | grep 'name' | cut -d\" -f4 | head -1 ) && \
    wget -P /tmp https://github.com/mayswind/AriaNg/releases/download/${ARIANG_VER}/AriaNg-${ARIANG_VER}-AllInOne.zip && \
    unzip /tmp/AriaNg-${ARIANG_VER}-AllInOne.zip -d /base && \
    rm -rf /tmp/AriaNg-${ARIANG_VER}-AllInOne.zip && \
    apk del wget unzip

FROM giterhub/darkhttpd:latest

LABEL maintainer="Light"

COPY --from=builder /base/index.html /www/index.html

EXPOSE 80

ENTRYPOINT [ "/darkhttpd" ]
CMD [ "/www" ]
