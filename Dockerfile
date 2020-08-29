FROM node:14.9.0-slim
RUN npm i -g firebase-tools
COPY README.md LICENSE /
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
