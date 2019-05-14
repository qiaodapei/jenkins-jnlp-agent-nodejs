# Jenkins JNLP Agent Docker image



## Running

To run a Docker container

    docker run jenkins/jnlp-slave -url http://jenkins-server:port <secret> <agent name>

To run a Docker container with [Work Directory](https://github.com/jenkinsci/remoting/blob/master/docs/workDir.md):

    docker run jenkins/jnlp-slave -url http://jenkins-server:port -workDir=/home/jenkins/agent <secret> <agent name>

Optional environment variables:

* `JENKINS_URL`: url for the Jenkins server, can be used as a replacement to `-url` option, or to set alternate jenkins URL
* `JENKINS_SECRET`: agent secret, if not set as an argument
* `JENKINS_AGENT_WORKDIR`: agent work directory, if not set by optional parameter `-workDir`

## Configuration specifics


