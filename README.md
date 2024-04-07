## Splunk docker
-----

### Steps
* clone the repo
    Clone the main Branch without proxy or traefik configures.
    ```
    git clone git@github.com:sheikhmunawar/splunkdocker_rhel-ubi8.git
    ```
    clone the proxy_traefik branch with traefik as a reverse proxy.
    ```
    git clone -b proxy_traefik git@github.com:sheikhmunawar/splunkdocker_rhel-ubi8.git
    ```
    Switch to a specific branch
    ```
    git checkout main
    git checkout proxy_traefik

    ```
* download splunk package in scripts folder
```
wget -O splunk-9.2.0.1-d8ae995bf219-Linux-x86_64.tgz "https://download.splunk.com/products/splunk/releases/9.2.0.1/linux/splunk-9.2.0.1-d8ae995bf219-Linux-x86_64.tgz"
```

*  Make a base image
```
docker build -t img_splunk_base_v2 .
```
~~docker run -it --name test_baseC2  -d img_splunk_base_v2~~

~~docker exec -it -u root test_baseC2  /bin/bash~~

* Remove previously created volumes before starting the cluster first time.
```
docker volume ls -q | xargs -r docker volume rm
```
* Start/stop the cluster
```
docker-compose up -d
docker-compose down
```

docker volume ls -q | xargs -r docker volume rm
