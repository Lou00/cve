FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list && \
    sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list  && \
    apt-get update
RUN apt-get install -y php7.2 && \
    apt-get install -y apache2 && \
    apt-get install -y libapache2-mod-php && \
    apt-get install -y git 
RUN rm -rf /var/www
COPY www /var/www
COPY run.sh /run.sh
RUN chmod +x /run.sh
WORKDIR /var/www

CMD /bin/bash /run.sh