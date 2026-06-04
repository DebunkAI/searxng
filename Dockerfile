FROM docker.io/searxng/searxng:latest

ARG SEARXNG_BASE_URL
ARG SEARXNG_UWSGI_WORKERS
ARG SEARXNG_UWSGI_THREADS
ARG PORT

ENV BASE_URL=${SEARXNG_BASE_URL}
ENV PORT=${PORT:-8080}
ENV UWSGI_WORKERS=${SEARXNG_UWSGI_WORKERS:-4}
ENV UWSGI_THREADS=${SEARXNG_UWSGI_THREADS:-4}

COPY ./railway-searxng-config /etc/searxng
COPY ./railway-searxng-config /etc/searxng-backup

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
