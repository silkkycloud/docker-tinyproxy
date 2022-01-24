####################################################################################################
## Final image
####################################################################################################
FROM alpine:3.15

RUN apk add --no-cache \
    ca-certificates \
    tinyproxy

COPY ./tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

EXPOSE 8080

CMD ["tinyproxy", "-d"]
