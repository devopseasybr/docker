FROM registry.access.redhat.com/ubi8/ubi:8.10 AS builder

RUN yum -y update && \
    yum -y install wget tar jq --disableplugin=subscription-manager && \
    yum clean all && \
    rm -rf /var/cache/yum
    
# - https://mirror.openshift.com/pub/openshift-v4/clients/ocp/
ARG OC_VERSION="4.18.5"

RUN wget --progress=dot:giga "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${OC_VERSION}/openshift-client-linux-amd64-rhel8.tar.gz" -O /tmp/oc.tar.gz && \
    tar -xzf /tmp/oc.tar.gz -C /usr/local/bin oc && \
    rm /tmp/oc.tar.gz

FROM registry.access.redhat.com/ubi8/ubi:8.10

COPY --from=builder /usr/local/bin/oc /usr/local/bin/oc

ENTRYPOINT ["oc"]
CMD ["version"]