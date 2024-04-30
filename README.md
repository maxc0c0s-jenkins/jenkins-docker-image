# jenkins-docker-image
Jenkins Docker image packaged with at least the configuration as code plugins

## Build the image
```
docker build -t local/jenkins:2.440.3-lts-jdk17 .
```

## Run the image
To execute this command, you need a .jenkins.yaml file and an .env file which you can find example for in https://github.com/maxc0c0s-jenkins/jenkins-jcasc-example-configs
```
docker run --name jenkins -p 80:8080 -p 50000:50000 --mount type=volume,src=jenkins_home,target=/var/jenkins_home:rw --mount type=bind,src=$(pwd)/.jenkins.yaml,target=/var/jenkins_home/jenkins.yaml --restart=on-failure --env-file .env local/jenkins:2.440.3-lts-jdk17
```
