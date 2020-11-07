# filebeat-configuration
Filebeat docker container configuration with elasticsearch and Kibana

## Steps to configure filebeat successfully
First make sure that your elasticseach and kibana servers are up and ready.
If your mentioned servers are up then follown the followiing steps:
* Change the permissions of configure.sh script as executeable
* Make directory name as logs_dataset in /var/log and place your log files in this folder(You can change this location by editing the path in configure.sh script).
* Find you elasticsearch and kibana server IP and replace Your_IP in .sh script with your server IP.
* Run the script as sudo user.
Happy life if your elasticsearch and kibana server up then this will successfully 
