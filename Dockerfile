FROM alpine as prep

ENV BUILD_VERSION=4.34-9745-beta \
    SHA256_SUM=a2d7951f4fafcef96ab8341a948a8d09ca02030e4161c5e90a34882aa8b34224

RUN wget https://github.com/SoftEtherVPN/SoftEtherVPN_Stable/archive/refs/tags/v${BUILD_VERSION}.tar.gz \
    && echo "${SHA256_SUM}  v${BUILD_VERSION}.tar.gz" | sha256sum -c \
    && mkdir -p /usr/local/src \
    && tar -x -C /usr/local/src/ -f v${BUILD_VERSION}.tar.gz \
    && rm v${BUILD_VERSION}.tar.gz