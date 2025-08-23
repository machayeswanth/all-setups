mount | grep ' / '                 #Check if root FS is read-only
sudo mount -o remount,rw /         #Remount root as read-write
mount | grep ' / '                 #Now it should show (rw, not (ro,.
sudo nano /usr/lib/systemd/system/jenkins.service
#replace
ExecStart=/usr/bin/java -Djava.awt.headless=true -DJENKINS_HOME=/var/lib/jenkins -jar /usr/share/java/jenkins.war --httpPort=8080
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl status jenkins -l

