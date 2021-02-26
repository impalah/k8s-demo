FROM yandex/clickhouse-server:20.8.9

# Copy config files
RUN mkdir -p /var/clickhouse-server-config
# COPY ./config/config.xml /var/clickhouse-server-config/config.xml
# COPY ./config/users.xml /var/clickhouse-server-config/users.xml

COPY ./config/config.xml /etc/clickhouse-server/config.xml
COPY ./config/users.xml /etc/clickhouse-server/users.xml


# Copy dictionaries
RUN mkdir -p /var/clickhouse-server-config/dictionaries
# COPY ./config/dictionaries/ /var/clickhouse-server-config/dictionaries/
COPY ./config/dictionaries/ /etc/clickhouse-server/dictionaries/
