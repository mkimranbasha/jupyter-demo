ARG BASE_IMAGE
ARG IMAGE_TAG
FROM ${BASE_IMAGE}:${IMAGE_TAG}
COPY AppDef.json /etc/NAE/AppDef.json
ARG BASE_IMAGE
ARG BRANCH
ADD https://raw.githubusercontent.com/nimbix/notebook-common/${BRANCH}/install-${BASE_IMAGE}.sh /tmp/install-${BASE_IMAGE}.sh
RUN bash /tmp/install-${BASE_IMAGE}.sh -p -b ${BRANCH} && rm -f /tmp/install-${BASE_IMAGE}.sh
