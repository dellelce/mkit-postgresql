FROM ghcr.io/dellelce/mkit-base as build

RUN ./mkit.sh profile=postgresql /app/postgresql

FROM alpine3.8 as target

COPY --from=build /app/postgresql /app/postgresql
