FROM  gradle:7.5.1-jdk8

RUN useradd -m -u 7000 -s /bin/bash jenkins

RUN yum install -y openssh-clients
