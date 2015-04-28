FROM ubuntu:trusty

RUN apt-get update && apt-get install -y curl logrotate

# Install the monitoring agent
RUN curl -sSL https://mms.mongodb.com/download/agent/monitoring/mongodb-mms-monitoring-agent_3.3.0.183-1_amd64.deb -o monitor-agent.deb
RUN dpkg -i monitor-agent.deb
RUN rm monitor-agent.deb

# Install the backup agent
RUN curl -sSL https://mms.mongodb.com/download/agent/backup/mongodb-mms-backup-agent_3.4.0.273-1_amd64.deb -o backup-agent.deb
RUN dpkg -i backup-agent.deb
RUN rm backup-agent.deb

ADD entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
