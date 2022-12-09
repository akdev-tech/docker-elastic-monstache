# Docker ElasticSearch Kibana MongoDB Monstache

Ready to use for development purposes docker-compose project with one-command deployment.
Autosync everything from MongoDB to ElasticSearch using [MongoDB Change stream](https://www.mongodb.com/docs/manual/changeStreams/).
All settings are put in `.env` file for easy customization.

## Getting Started

To run this project all you need is to clone code and have docker-compose installed.

### Installing

```
$ git clone https://github.com/akdev-tech/docker-elastic-monstache.git
$ cd docker-elastic-monstache
```

After that you may change .env file containing hostnames, usernames, passwords and Monstache config.

### Running

```
$ docker-compose up -d
```

## Default configuration

### MongoDB

Is deployed in single-node replicaSet configuration

http://127.0.0.1:27017?replSet=dbrs


Root user credentials:
`root` `rootpassword`


User credentials:
`username` `password`


### ElasticSearch

http://127.0.0.1:9200


User credentials:
`elastic` `elasticpass`


### Kibana web interface

http://127.0.0.1:5601


User credentials:
`elastic` `elasticpass`


### Please draw attention

Initialization of MongoDB replica set is performed with docker-compose `healthcheck` directive, so you may see errors in startup logs for the first time. It is done this way to avoid routine logging in console and executing the initialization command.

This project should be used only in development purposes.


## Built With These Docker Images

* [MongoDB](https://hub.docker.com/_/mongo)
* [ElasticSearch](https://hub.docker.com/_/elasticsearch)
* [Kibana](https://hub.docker.com/_/kibana)
* [Monstache](https://hub.docker.com/r/rwynn/monstache)


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Startup logs containing errors for the first run (until replicaSet is initialized)
* `docker-compose ps` shows `unhealthy` status for mongodb
