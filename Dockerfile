FROM kong:latest

USER root

COPY $ROCKS_DIR /

RUN luarocks install /plugins/rocksdir/kong-plugin-array-config-1.0.0-1.all.rock

USER kong
