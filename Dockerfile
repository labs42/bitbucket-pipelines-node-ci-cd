FROM node:7

MAINTAINER Alexander I. Antipin <alex@antipin.com>

# If a host is reinstalled and has a different key in ‘known_hosts’,
# this will result in an error message until corrected.
# If a host is not initially in ‘known_hosts’ this will result in prompting for confirmation of the key,
# which results in an interactive experience if using Ansible, from say, cron.
# Disable this behavior by specifying ANSIBLE_HOST_KEY_CHECKING
ENV ANSIBLE_HOST_KEY_CHECKING False

# Install ansible and utils
RUN apt-get update --yes && \
	apt-get install software-properties-common --yes && \
	apt-add-repository ppa:ansible/ansible --yes && \
	apt-get install ansible rsync --yes

# Extract ssh key from BITBUCKET_BASE64_SSH_KEY env variable
ONBUILD RUN mkdir -p ~/.ssh && \
	echo $BITBUCKET_BASE64_SSH_KEY | base64 --decode > ~/.ssh/id_rsa && \
	chmod 600 ~/.ssh/id_rsa
