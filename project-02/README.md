![npm package](https://img.shields.io/badge/jenkins-2.299-red.svg)
![npm package](https://img.shields.io/badge/docker-19.03.8-blue.svg)
![npm package](https://img.shields.io/badge/ampache-4.1.1-yellow.svg)
![npm package](https://img.shields.io/badge/github-1.8.3.1-orange.svg)
![npm package](https://img.shields.io/badge/apache-2.4.38-purple.svg)
![npm package](https://img.shields.io/badge/mariadb-10.3.29-yellow.svg)

<h1>Introduction</h1>

This is my 2nd project working with Jenkins. This one looks like a little more complex compared to the previous one, but still not follows the entire approach of Jenkins.
In this project we can build my favourite "online" music streamer, [the Ampache](https://ampache.org/) from a Jenkinsfile.

<h1>Prerequisities</h1>

We only need to have is a [Jenkinsfile](https://github.com/SandorJokai/Jenkins/tree/master/project-02/Jenkinsfile). No, seriously. But of course, there are some more requirements. However those "more" will be added through the Jenkinsfile.
So, I have another [Github repository](https://github.com/SandorJokai/docker/tree/master/ampache-streamer) where the Jenkinsfile will be working with.
And every files will be downloaded from that repo.

<h3>More requisites...</h3>

- docker engine must be installed
- create a git clone of this repository
- build an image from [Dockerfile](../Dockerfile)
- launch a Jenkins container (*/usr/bin/docker && /var/run/docker.sock && /var/jenkins_home must be added as volumes*)

<h2>Create pipeline</h2>

In order to follow this project, it's very important that the Jenkins pipeline name's must be called *docker-ampache*. 
Once we created the pipeline, let's jump to the bottom where we can select *Pipeline script from SCM*. Select *Git* and paste the [Repository URL](https://github.com/SandorJokai/Jenkins/)

Once we done that, it's also important that the *Script path* name's must be called [Jenkinsfile-02](https://github.com/SandorJokai/Jenkins/blob/master/Jenkinsfile-02). (*Github can not to be cloned from directories inside a repo, rather the entire repository (included all the sub directories) will be cloned.*)

<h2>Post-settings</h2>

Let's open a new tab in our fav browser, type: http://<HOST_IP> and follow these instructions:
  - select a language and click on continue
  - type *ampache* in MySQL admin and password
  - take the tick out from *create a database* as we already have one in docker image
  - click on *insert database* at bottom
  - Leave everything blank and click continue
  - finally create an admin account for using ampache and Enjoy. :)
  
![npm package](https://img.shields.io/badge/jenkins-2.299-red.svg)
![npm package](https://img.shields.io/badge/docker-19.03.8-blue.svg)
![npm package](https://img.shields.io/badge/ampache-4.1.1-yellow.svg)
![npm package](https://img.shields.io/badge/github-1.8.3.1-orange.svg)
![npm package](https://img.shields.io/badge/apache-2.4.38-purple.svg)
![npm package](https://img.shields.io/badge/mariadb-10.3.29-yellow.svg)
