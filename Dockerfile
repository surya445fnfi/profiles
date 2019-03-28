FROM centos/wildfly
ADD target/samplewar.war    /opt/wildfly/standalone/deployments/
RUN /opt/wildfly/bin/add-user.sh admin Admin#70365 --silent
CMD ["/opt/wildfly/bin/standalone.sh", "-c", "standalone-full.xml", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]


