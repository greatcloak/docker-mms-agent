mms monitor and backup agents
==========

MongoDB Monitoring Service (mms) agent

Environment variables
---------------------

*  `MMS_API_KEY`  _(required)_ Your mms API key
*  `MMS_GROUP_ID` Your mms Group id
*  `MMS_SERVER`  Optional override of the mms server URL to connect to
*  `MMS_MUNIN`   (boolean, default: `true`)  Whether to use munin
*  `MMS_CHECK_SSL_CERTS` (boolean, default: `true`) Whether to check SSL certificates

To run the monitoring agent use `mongodb-mms-monitoring-agent`. If you want to add extra config options mount a file volume to `/monitoring-agent.config`
`docker run -d --restart="always" -h $(hostname) --env="MMS_API_KEY=YOUR_API_KEY"  greatcloak/docker-mms-agent mongodb-mms-monitoring-agent`

To run the backup agent use `mongodb-mms-backup-agent`. If you want to add extra config options mount a file volume to `/backup-agent.config`.
`docker run -d --restart="always" -h $(hostname) --env="MMS_API_KEY=YOUR_API_KEY"  greatcloak/docker-mms-agent mongodb-mms-backup-agent`