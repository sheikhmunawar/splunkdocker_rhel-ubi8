## Splunk docker
-----

### Steps
* clone the repo
    Please see branches for more info
* download splunk package in scripts folder
```
wget -O splunk-9.2.0.1-d8ae995bf219-Linux-x86_64.tgz "https://download.splunk.com/products/splunk/releases/9.2.0.1/linux/splunk-9.2.0.1-d8ae995bf219-Linux-x86_64.tgz"
```

*  Make a base image
```
docker build -t img_splunk_base_v1 .
```
~~docker run -it --name test_baseC1  -d img_splunk_base_v1~~

~~docker exec -it -u root test_baseC1  /bin/bash~~

* Start/stop the cluster
```
docker-compose up -d
docker-compose down
```

