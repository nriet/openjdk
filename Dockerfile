FROM centos:centos7.9.2009

MAINTAINER Axiu <itzyx@vip.qq.com>

RUN yum install -y java-1.8.0-openjdk kde-l10n-Chinese &&\
                   yum clean all && \
                   rm -rf /var/cache/yum

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8

ENV LC_ALL zh_CN.UTF-8

ENV TZ PRC

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Define default command.
CMD ["bash"]
