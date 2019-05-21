@echo off
java -jar c:\\resource\\agent.jar -jnlpUrl %JENKINS_URL% -secret %JENKINS_SECRET% -workDir %JENKINS_AGENT_WORKDIR%
