FROM alpine:3.22

ENV TERRAFORM_VERSION="1.12.1"
ENV TERRAFORM_URL=https://releases.hashicorp.com/terraform/$TERRAFORM_VERSION/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

WORKDIR /home/terraform 

RUN apk update \
    && apk add --no-cache curl \
    && addgroup -g 1000 -S terraform \
    && adduser  -u 1000 -S terraform -G terraform \
    && curl -O $TERRAFORM_URL && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin/ \
    && rm -rf /home/terraform/setup.sh /home/terraform/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && apk del curl \
    && rm -rf /var/cache/apk/*
 
USER terraform
