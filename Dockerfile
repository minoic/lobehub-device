FROM node:26-bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates curl git gzip python3 python3-pip python3-venv ripgrep tar unzip \
    && rm -rf /var/lib/apt/lists/*

ARG CLI_VERSION
RUN test -n "$CLI_VERSION" && npm install -g "@lobehub/cli@${CLI_VERSION}" && npm cache clean --force

USER node
WORKDIR /workspace
CMD ["lh", "connect"]
