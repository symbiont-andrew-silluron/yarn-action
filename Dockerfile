FROM node:14.2.0-alpine

LABEL version="0.0.0"
LABEL repository="https://github.com/asilluron/yarn-action"
LABEL homepage="https://github.com/asilluron/yarn-action"
LABEL maintainer="Andrew Silluron <andrew@silluron.com>"

LABEL com.github.actions.name="GitHub Action for Yarn with NVM"
LABEL com.github.actions.description="Wraps the yarn CLI to enable common yarn commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"
COPY LICENSE README.md /

RUN apk update && \
    apk upgrade && \
    apk add git openssh curl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
