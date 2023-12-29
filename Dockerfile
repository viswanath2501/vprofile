# Use the official Tomcat 8.0 Alpine base image
FROM tomcat:8.0-alpine

# Set the maintainer label
LABEL maintainer="abc@testing.com"

# Set the working directory to the default Tomcat webapps directory
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file into the webapps directory
COPY target/vprofile-v2.war .

# Expose port 8080 for incoming traffic
EXPOSE 8080

# Start Tomcat using the catalina.sh script in the foreground
CMD ["catalina.sh", "run"]

