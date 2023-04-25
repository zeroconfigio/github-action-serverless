ARG SLS_VERSION=latest
FROM zeroconfigio/serverless:${SLS_VERSION}

LABEL version="1.0.0"
LABEL repository="https://github.com/zeroconfigio/github-action-serverless"
LABEL homepage="https://github.com/zeroconfigio/github-action-serverless"
LABEL maintainer="ZeroConfig.io <hello@zeroconfig.io> (https://zeroconfig.io)"

LABEL "com.github.actions.name"="Serverless"
LABEL "com.github.actions.description"="Enable common Serverless commands on your GitHub actions workflow"
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="orange"

ENTRYPOINT ["serverless"]