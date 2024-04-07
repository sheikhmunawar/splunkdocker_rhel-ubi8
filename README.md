## Splunk docker
-----

### Steps
* clone the repo
  
    clone the main branch
    ```
    git clone git@github.com:sheikhmunawar/splunkdocker_rhel-ubi8.git

    OR use below url if not logged in to git or git keys not setup
    git clone https://github.com/sheikhmunawar/splunkdocker_rhel-ubi8.git

    switch to proxy branch
    git checkout -b proxy_traefik

    Run following to make sure you are on proxy_traefik branch
    git branch
    ```
* download splunk package in scripts folder
    ```
    wget -O splunk-9.2.0.1-d8ae995bf219-Linux-x86_64.tgz "https://download.splunk.com/products/splunk/releases/9.2.0.1/linux/splunk-9.2.0.1-d8ae995bf219-Linux-x86_64.tgz"
    ```

* Remove previously created volumes by old script before starting the cluster for the first time.
    ```
    docker volume ls -q | xargs -r docker volume rm
    ```
*  Make a base image

    ```
    docker build -t img_splunk_base_v2 .
    ```



* Start/stop the cluster
```
docker-compose up -d            # will bring the whole cluster up
docker-compose up -d cm1        # will bring only cluster manager up
docker-compose up -d cm1 idx1   # will bring cluster manager and indexer1  up


docker-compose down             # will bring the whole cluster down
```
* Use following URLs to access web interface
[dep1: dep1.localhost](dep1.localhost)
[cm1: cm1.localhost](cm1.localhost)
[sh1: sh1.localhost](sh1.localhost)
[sh2: sh2.localhost](sh2.localhost)
[idx1: idx1.localhost](idx1.localhost)


### Troubleshooting
* create temp container of the base image and connect to it
    ```
    docker run -it --name test_baseC2  -d img_splunk_base_v2
    docker exec -it -u root test_baseC2  /bin/bash
    ```
* Remove previously created volumes by old script before starting the cluster for the first time.
    ```
    docker volume ls -q | xargs -r docker volume rm
    ```