FROM percona/percona-server:latest
USER 0
RUN apt-get update && apt-get install -y percona-server-tokudb-5.7
COPY ps_tokudb_admin /usr/bin/ps_tokudb_admin
USER 1001
