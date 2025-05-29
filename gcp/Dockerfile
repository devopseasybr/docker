
FROM alpine:3.21.3 
COPY setup.sh . 
RUN sh setup.sh
USER gcp
ENV PATH /google-cloud-sdk/bin:$PATH