#!/bin/bash

# Stop Tomcat (if running)
echo "Stopping Tomcat..."
sudo systemctl stop tomcat

# Remove the old application
echo "Removing old application..."
sudo rm -rf /opt/tomcat/webapps/myapp*

# Copy the new application WAR file
echo "Copying new application..."
sudo cp target/myapp.war /opt/tomcat/webapps/

# Start Tomcat
echo "Starting Tomcat..."
sudo systemctl start tomcat
