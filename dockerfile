FROM projectserum/build:v0.16.2

WORKDIR /soteria
RUN sh -c "$(curl -k https://supercompiler.xyz/install)" && rm soteria-linux-develop.tar.gz
ENV PATH="/soteria/soteria-linux-develop/bin/:${PATH}"

WORKDIR /workdir
RUN cargo install cargo-audit

RUN bash