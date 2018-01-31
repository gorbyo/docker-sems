# Version: 0.1.1
FROM centos:latest
MAINTAINER Oleh Horbachov <gorbyo@gmail.com>
RUN yum clean all \
    && yum update -y \
    && yum install epel-release -y \
    && yum groups install 'Development Tools' -y \
    && yum install git libevent-devel speex-devel opus-devel openssl-devel python-devel hiredis-devel libcurl-devel wget yum-plugin-remove-with-leaves -y \
    && yum clean all
RUN git clone https://github.com/sems-server/sems.git
RUN cd sems/ \
    && git checkout tags/1.6.0 \
    && make all \
    && make install
RUN yum groups remove 'Development Tools' -y \
    && yum remove git libevent-devel speex-devel opus-devel openssl-devel python-devel hiredis-devel libcurl-devel kernel-debug-devel kernel-headers yum-plugin-remove-with-leaves -y \
    && yum clean all \
    && rm -rf /var/cache/yum
RUN groupadd -r -g 996 sems && useradd -M -r -u 996 -g 996 sems

COPY sems.conf /usr/local/etc/sems/sems.conf

CMD ["/usr/local/sbin/sems", "-E", "-u", "sems", "-g", "sems",  "-f", "/usr/local/etc/sems/sems.conf"]

STOPSIGNAL SIGTERM
