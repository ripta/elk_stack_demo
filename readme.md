docker-compose build
docker-compose up

docker-compose run rails rake db:create
docker-compose run rails rake db:setup



todo:
- rails volumes not working?



---

ELK

log stash forwarder
uses different regex patterns for log parsing
no limit on indexes
limit of events that can be processed per second 60k (per node)
scaling / would we need a broker 
secure (need a proxy), commercial would have a security plugin
github.com/elasticsearch/demo
logstash config is writen in ruby
what is system d




key value:
- considered best practice format for splunk
- lower memory footprint

json:
- structured so we could have more complex or nested structures (complex structures aren't recommended though)
- don't have to worry about escaping



-------
log forwarders

https://github.com/elastic/beats/tree/master/filebeat


https://www.elastic.co/guide/en/logstash/current/plugins-inputs-syslog.html
https://docs.docker.com/engine/admin/logging/overview/


