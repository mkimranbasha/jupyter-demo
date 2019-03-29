ARG BASE_IMAGE
ARG IMAGE_TAG
FROM ${BASE_IMAGE}:${IMAGE_TAG:-latest}
ARG BASE_IMAGE
ARG BRANCH
ARG PYTHON
ADD https://raw.githubusercontent.com/nimbix/notebook-common/${BRANCH:-master}/install-notebook-common /tmp/install-notebook-common
RUN cat /tmp/install-notebook-common | su - -c 'sed "s|<SHELL>|${SHELL}|"' | su - -c '${SHELL} -s -- '"-b ${BRANCH:-master} ${PYTHON}" && rm /tmp/install-notebook-common

COPY AppDef.json /etc/NAE/AppDef.json

EXPOSE 5901
EXPOSE 443
