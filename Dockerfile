FROM debian:jessie

RUN apt-get update && \
    apt-get install -y incron python python-pip

RUN pip install python-swiftclient

COPY backup-to-swift /usr/local/bin/backup-to-swift

RUN chmod +x /usr/local/bin/backup-to-swift

COPY swift-uploader.cron /etc/incron.d/swift-uploader.cron

CMD /usr/sbin/incrond -n