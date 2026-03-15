FROM node:24-bullseye-slim

# Create non-root user
RUN groupadd appgroup && useradd -m -g appgroup appuser

WORKDIR /workspace

ENV NPM_CONFIG_PREFIX=/home/appuser/.npm-global
ENV PATH=/home/appuser/.npm-global/bin:$PATH
RUN mkdir -p /home/appuser/.npm-global && chown -R appuser:appgroup /home/appuser/.npm-global

USER appuser

RUN npm install -g opencode-ai

ENTRYPOINT ["opencode"]
