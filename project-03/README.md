![npm package](https://img.shields.io/badge/ansible-2.9.20-black.svg)
![npm package](https://img.shields.io/badge/python-2.7.18-turquoise.svg)
![npm package](https://img.shields.io/badge/git-2.23.4-red.svg)
![npm package](https://img.shields.io/badge/jenkins-2.289.1-purple.svg)
![npm package](https://img.shields.io/badge/amazon-aws-yellow.svg)

<h1>Ansible integrate with Jenkins</h1>

In this project, there's a combination of my favourite DevOps tools: AWS, Ansible and Jenkins. The basic concept is launching two EC2 instances in AWS and making one for Ansible-control and the other one for the managed node. In the end there will be a web server installed. The whole process will be delivered by Jenkins after installing some base dependencies and services.

<h1>Prerequisities</h1>

- need to have an AWS account
- must be able to use bash shell confidently
- familiar with jenkins, Ansible and Linux.

<h2>Preparations on server</h2>

Once we launched the instances (*The base images are the default Amazon linux2 in my case*), let's login to one of it. From now, let's call it *Jenkins-srv*. Install the followings:

- jenkins
<h6>note: If we use a Redhat based Linux OS, we need to add the Ansible repository. In order to get that just following these commands:</h6> 

```bash
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
```

```bash
sudo yum --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
```

```bash
sudo yum upgrade
```
```bash
sudo dnf install chkconfig java-devel
```
```bash
sudo dnf install jenkins
```

- ansible
- git

<h2>Create a Jenkins pipeline</h2>

Let the rest of job be done by Jenkins. We need ansible plugin previously installed. Once we done that, go to the bottom where the *pipeline script* exist.
Click on *Pipeline script from SCM* and add [Jenkinsfile](https://github.com/SandorJokai/Jenkins/tree/master/project-03/Jenkinsfile).

Make sure there private IP of managed Node must be changed as well as the .pem file.

![npm package](https://img.shields.io/badge/ansible-2.9.20-black.svg)
![npm package](https://img.shields.io/badge/python-2.7.18-turquoise.svg)
![npm package](https://img.shields.io/badge/git-2.23.4-red.svg)
![npm package](https://img.shields.io/badge/jenkins-2.289.1-purple.svg)
![npm package](https://img.shields.io/badge/amazon-aws-yellow.svg)
