####################################################################################################
## Final image
####################################################################################################
FROM alpine:3.15

RUN apk add --no-cache \
    ca-certificates \
    tinyproxy

# Add an unprivileged user
RUN adduser --disabled-password --gecos "" --no-create-home tinyproxy

COPY ./tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

EXPOSE 8080

CMD ["tinyproxy", "-d"]
