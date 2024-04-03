# Use the official Elasticsearch image from Docker Hub
FROM docker.elastic.co/elasticsearch/elasticsearch:7.16.3

# Expose Elasticsearch ports
EXPOSE 9200 9300

# Set the network.host to 0.0.0.0 to make Elasticsearch accessible from any IP address
RUN echo "network.host: 0.0.0.0" >> /usr/share/elasticsearch/config/elasticsearch.yml

# Set discovery type to single-node to avoid the bootstrap checks
RUN echo "discovery.type: single-node" >> /usr/share/elasticsearch/config/elasticsearch.yml

# Start Elasticsearch
CMD ["elasticsearch"]
