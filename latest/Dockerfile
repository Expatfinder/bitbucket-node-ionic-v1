FROM centos:7

MAINTAINER expatfinder (dev@expatfinder.com)

RUN (curl -sL https://rpm.nodesource.com/setup_10.x | bash -) \
  && yum clean all -y \
  && yum update -y \
  && yum install -y nodejs \
  && yum autoremove -y \
  && yum clean all -y \
  && npm install npm --global \
  && npm install yarn --global
