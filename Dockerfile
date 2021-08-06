FROM docker.elastic.co/beats/filebeat:7.8.1
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
VOLUME ["/volume"]
RUN chmod 777 /volume && \
chown root:filebeat /usr/share/filebeat/filebeat.yml
