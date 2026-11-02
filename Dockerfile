FROM node:22-bookworm-slim

ARG CLI_VERSION
RUN test -n "$CLI_VERSION" && npm install -g "@lobehub/cli@${CLI_VERSION}" && npm cache clean --force

USER node
WORKDIR /workspace
CMD ["lh", "connect"]
