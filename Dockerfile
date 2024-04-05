FROM registry.access.redhat.com/ubi8/ubi-minimal

VOLUME /opt

WORKDIR /opt

COPY ./scripts .
# Run the install.sh script at runtime to get the pre-requisites installed
RUN chmod +x install.sh 
RUN ./install.sh  

CMD ["bash"]
