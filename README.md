# docker-wso2dss
===================

Docker image to install and run WS02 Data Services Server . It uses the [dockerfile/java](https://index.docker.io/u/dockerfile/java/) as its base image.


The dockerfile will:

* Use `wget` to pull the DSS 3.2.2 ZIP from WS02 web server into the container `/opt` folder.
* Install `zip`.
* Unzip the DSS 3.2.2 ZIP.
* Remove the DSS 3.2.2 ZIP.
* Expose the container port `9443`.
* Set the API Manager `wso2server.sh` start-up script as the container start-up command.

### Usage
* To pull: `docker pull massimodanieli/wso2dss`
* To build: `docker build --rm -t your_image_name github.com/massimodanieli/docker-wso2dss`
* To run: `docker run --rm --name your_container_name -p 9443:9443 your_image_name`
* To access API Manager web admin console, navigate to `https://localhost:9443`

