FROM node:13

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

# Add global ansible config file
COPY ansible.cfg /etc/ansible

# Add create_id_rsa executable to be used in child containers
COPY create_id_rsa /usr/local/bin
RUN chmod +x /usr/local/bin/create_id_rsa
