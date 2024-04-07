FROM registry.access.redhat.com/ubi8/ubi-minimal

VOLUME /opt

WORKDIR /opt

COPY ./scripts .
# Run the install.sh script at runtime to get the pre-requisites installed
RUN chmod +x install.sh 
RUN ./install.sh  
RUN chmod +x splunkInstall.sh 
RUN ./splunkInstall.sh
RUN chown -R splunk:splunk /opt/splunk

# CMD ["bash", "-c", "su -c '/opt/splunk/bin/splunk start' splunk"]
CMD ["bash"]
