FROM docker.elastic.co/beats/filebeat:6.3.2
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
VOLUME ["/volume"]
RUN chmod 777 /volume && \
chown root:filebeat /usr/share/filebeat/filebeat.yml