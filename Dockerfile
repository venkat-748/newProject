FROM  gradle:7.5.1-jdk8

RUN useradd -m -u 1000 -s /bin/bash jenkins

RUN yum install openssh-clients
