
FROM centos
RUN yum install -y wget
#RUN rpm -e epel-release
RUN wget -P /etc/yum.repos.d/ http://mirrors.aliyun.com/repo/epel-6.repo
RUN yum clean all
RUN yum makecache
RUN yum -y install stress 
ENTRYPOINT ["stress"]
