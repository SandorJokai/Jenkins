![npm package](https://img.shields.io/badge/jenkins-2.299-red.svg)
![npm package](https://img.shields.io/badge/docker-19.03.8-blue.svg)
![npm package](https://img.shields.io/badge/github-1.8.3.1-orange.svg)

<h1>What is Jenkins?</h1>

Jenkins is an open source automation server which can be used to automate all sorts of tasks related to building, testing, and delivering
or deploying software. That is what we call CI / CD in short.

Jenkins can be installed through native system packages, Docker (like in my case now), or even run standalone by any machine with a Java
Runtime Environment (JRE) installed.

<h1>This is my first project with Jenkins...</h1>

As I've been studying about the concept of DevOps with some tools since last summer, I thought I must be familiar with Jenkins as well. 
So far so good. This is day first and here we are, I'm proudly publishing my first pipeline. :-)
I still have to know so many concepts and technics, but the way how easily we can use it, just marvelous.

<h2>Prerequisites</h2>

- docker engine must be installed
- build an image from [Dockerfile](../master/Dockerfile)
- launch a container: 

![Image of mysql](https://github.com/SandorJokai/Jenkins/blob/master/jenkins.png)

and go to the browser...

<h3>Get to know Jenkins</h3>

In order to understand this project, it's recommended to read the very basics at least on the 
<a href="https://www.jenkins.io/doc" target="_blank">Jenkins's official site</a>

After learning a bit about Jenkins, let's get hands dirty...

<h2>My first pipeline</h2>

There are two ways to creat pipelines(set of automated processes):

- scripted
- declarative

The newest version from these two methods is the declarative with more functionals. 
In my first project ([Jenkinsfile-declarative](../master/Jenkinsfile-declarative)) a web server will be installed running on apache in
the docker container.

Once we logged in Jenkins, create a new item on top of left side panel, name it, choose pipeline and click OK.
After that, click on pipeline on the top, leave everything as default and choose pipeline script from SCM. Choose git, copy and paste the 
github repo address from here, modify the script Path to 'Jenkinsfile-declarative' and click OK. And that's it pretty much. 

Finally, just click on 'Build now' on left side panel again and notice, there is a process just launched. :)
