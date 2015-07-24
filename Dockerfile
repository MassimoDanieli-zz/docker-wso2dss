#
# WSO2 Data Service Server 3.2.2
#
FROM java:7
MAINTAINER Massimo Danieli, massimo@massimodanieli.com

RUN wget -P /opt --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/data-services-server/3.2.2/wso2dss-3.2.2.zip  && \
apt-get update && \
    apt-get install -y zip && \
    apt-get clean && \
    unzip /opt/wso2dss-3.2.2.zip -d /opt && \
    rm /opt/wso2dss-3.2.2.zip

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
EXPOSE 9443
CMD ["/opt/wso2dss-3.2.2/bin/wso2server.sh"]
