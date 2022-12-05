FROM ghcr.io/dellelce/mkit-base as build

RUN ./mkit.sh profile=postgres /app/postgresql

FROM alpine:3.8 as target

COPY --from=build /app/postgresql /app/postgresql
