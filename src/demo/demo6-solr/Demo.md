# Create a new docker container
docker run --name solr1 -d -p 8983:8983 -t solr

# Goto http://dockerhost:8983/solr to verify

# Solr : Create a core
docker exec -it --user=solr solr1 bin/solr create_core -c gettingstarted


# Solr : Verify by navigating to http://dockerhost:8983/solr/#/gettingstarted
open http://dockerhost:8983/solr/#/gettingstarted

# Solr : Upload some documents
docker exec -it --user=solr solr1 bin/post -c gettingstarted example/exampledocs/manufacturers.xml

# Solr : Verify by searching at http://dockerhost:8983/solr/#/gettingstarted
open http://dockerhost:8983/solr/#/gettingstarted

# Create image for search client
docker build -t yosearch:latest demo6-solr

# Create a container for search client
docker run --name yosearch1 --link solr1:solr yosearch

# Run searches
docker exec yosearch1 search CA

# stop and destroy docker container
docker rm -f yosearch1 solr1