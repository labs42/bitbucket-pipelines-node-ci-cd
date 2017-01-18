Bitbucket Pipelines Node CI and CD
==================================

This image allows to run CI and CD tasks for nodejs applications in Bitbucket 
Pipelines environment.

It contains node, npm, ansible and some other utils that are useful for 
testing, building and deployment purposes.

Requirements
------------

### BITBUCKET_BASE64_SSH_KEY environment variable

In order to make Bitbucket Pipelines be able to deploy your application to remote
server, you shoud add a BITBUCKET_BASE64_SSH_KEY environment variable with 
base64 encoded private ssh key.

More information about [https://confluence.atlassian.com/bitbucket/environment-variables-in-bitbucket-pipelines-794502608.html](environment variables in Bitbucket Pipelines).