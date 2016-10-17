#/bash/bin

docker run -p [9090:9090, 9006:9006] -v ${PWD}/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus
