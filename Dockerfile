FROM debian:sid

ENV DEBIAN_FRONTEND=noninteractive

RUN useradd --create-home deluge && \
    mkdir -p /home/deluge/.config/deluge && \
    chown -R deluge:deluge /home/deluge/ && \
    apt-get -y update && \
    apt-get install -y --no-install-recommends deluge-gtk && \
    ulimit -n 30000 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/.cache/pip*

USER deluge

WORKDIR /home/deluge

COPY --chown=deluge:deluge --chmod=755 docker-entrypoint*.sh /home/deluge/

ENTRYPOINT ["/home/deluge/docker-entrypoint.sh"]
