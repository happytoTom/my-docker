docker run -itd \
-p 9090:9090 \
-p 50000:50000 \
-e JENKINS_OPTS=--httpPort=9090 \
--restart=always \
-v /data/jenkins-server:/var/jenkins_home \
-v /sftp:/sftp \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /usr/bin/docker:/bin/docker \
--name jenkins-server \
#--net=usscity \
#--hostname jenkins-server.usscity \
docker.zixing.com/jenkins-node:2.60.3_8.9.4
