FROM centos:centos7.6.1810 
# 镜像的作者 
LABEL maintainer="<371583076@qq.com>" \
      name="jenkins" \
      author="xiao.li" \
      vendor="qiaodapei" \
      version="2.164.3" \
      systemver="centos" \
      desc="centos or nodejs" \
      build-date="20190515"   
COPY resource /tmp/resource
### SET ENVIRONNEMENT
ENV LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN.UTF-8 \
    TIME_ZONE=Asia/Shanghai 
# Install language pack
RUN localedef -v -c -i en_US -f UTF-8 zh_CN.UTF-8 >/dev/null 2>&1 &&\
    ln -nfs  /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
    grep -q 'zh_CN.utf8' /etc/locale.conf || sed -i -E 's/^LANG=.*/LANG="zh_CN.UTF-8"/' /etc/locale.conf &&\
    yum -y install http://rpms.famillecollet.com/enterprise/remi-release-7.rpm &&\
    yum install -y ntp yum-plugin-fastestmirror vim-enhanced ntp wget bash-completion elinks lrzsz unix2dos dos2unix git unzip net-tools cronie &&\
    yum install -y gcc-c++ make python python-devel python-pip python36 python36-devel python36-setuptools java-1.8.0-openjdk &&\
    curl -sL https://rpm.nodesource.com/setup_10.x | bash - && yum install -y nodejs &&\
    curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo && yum install -y yarn &&\
    npm install -g cnpm --registry=https://registry.npm.taobao.org &&\
    cp -r /tmp/resource/agent.jar /usr/bin/agent.jar && \
    cp -r /tmp/resource/jenkins.sh /usr/local/bin/jenkins.sh && \
    chmod +x /usr/bin/agent.jar && chmod +x /usr/local/bin/jenkins.sh && \
    mkdir /data && yum clean all && rm -fr /tmp/Resources 


WORKDIR /data/jenkins_home


ENTRYPOINT ["/usr/local/bin/jenkins.sh"]
