FROM fugue/regula:v1.0.0 AS regula

FROM alpine:3.13.5
RUN apk add --update bash jq
COPY --from=regula /usr/local/bin/regula /usr/local/bin/regula
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
