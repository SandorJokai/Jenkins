
FROM jenkins/jenkins

MAINTAINER Sandor Jokai <shanxman1986@gmail.com>

USER root

RUN apt update && apt install -y --no-install-recommends supervisor && mkdir -p \
/var/log/supervisor && mkdir -p /etc/supervisor/conf.d

COPY supervisord.conf /etc/supervisor/conf.d 

#COPY .jenkins-secret /etc/secrets

ENV JENKINS_OPTS=--prefix=/jenkins

ENV SECRETS_DIR=/etc/secrets

EXPOSE 8080, 80

VOLUME ["/var/lib/docker/volumes/jenkins"]

