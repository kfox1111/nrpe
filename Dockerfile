FROM centos:centos7

RUN \
  yum install -y epel-release && \
  yum install -y nrpe

EXPOSE 5666

USER nrpe:nrpe

CMD ["/bin/bash", "-c", "rm -f /var/run/nrpe/nrpe.pid && /usr/sbin/nrpe -c /etc/nagios/nrpe.cfg -f"]
