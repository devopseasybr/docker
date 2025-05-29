FROM alpine:3.21.3

WORKDIR /etc/ansible

RUN apk update && apk add ansible openssh && ssh-keygen -t rsa -b 4096 -f /etc/ansible/sshkey -N ""

CMD ["ansible", "--version"]