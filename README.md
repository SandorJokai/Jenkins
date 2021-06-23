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
So far so good. This is day first and here we are, I'm publicing proudly my first pipeline. :-)
I still have to know so many concepts and technics, but the way how we can use is just marvelous.

<h2>Prerequisites</h2>

- docker engine must be installed
- build an image from Dockerfile
- launch a container: 

![Image of mysql](https://github.com/SandorJokai/Jenkins/blob/master/jenkins.png)

and go to the browser...

<h3>Get to know Jenkins</h3>

My learning method - just like in case of everything else - reading the official materials, always the officials. Because official sites are up-to-date.
Here is the official site of Jenkins:

https://www.jenkins.io/doc

After learning a bit let's get hands dirty...

<h2>My first pipeline</h2>

In my first project with jenkins (pipeline) there are stages where a web server will be installed running on apache

