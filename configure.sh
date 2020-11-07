

docker pull docker.elastic.co/beats/filebeat:7.9.3
docker run \
docker.elastic.co/beats/filebeat:7.9.3 \
setup -E setup.kibana.host/Your_IP:5601 \
-E output.elasticsearch.hosts=["Your_IP:9200"]
docker run -d \
	--name=filebeat \
	--user=root \
	--volume="$(pwd)/filebeat.yml:/usr/share/filebeat/filebeat.yml:ro" \
	--volume="/var/log/logs_dataset:/var/log/custom:ro" \
docker.elastic.co/beats/filebeat:7.9.3 filebeat -e -strict.perms=false \
-E output.elasticsearch.hosts=["Your_IP:9200"]


