## Splunk docker
-----

### Steps
* clone the repo
* download splunk package in scripts folder
```
wget -O splunk-9.2.0.1-d8ae995bf219-Linux-x86_64.tgz "https://download.splunk.com/products/splunk/releases/9.2.0.1/linux/splunk-9.2.0.1-d8ae995bf219-Linux-x86_64.tgz"
```
## One time Steps
*  Make a base image
  ```
  docker build -t img_splunk_base_v1 .
  ```
* Run and connect tothe image if want to check or change
```
docker run -it --name test_baseC1  -d img_splunk_base_v1
docker exec -it -u root test_baseC1  /bin/bash 
```

