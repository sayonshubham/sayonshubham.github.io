---
layout: post
title: "Ansible Introduction"
date: 2019-03-15
---

<font color="red"><b>Ansible</b></font> is an open source IT Configuration Management, Deployment & Orchestration tool. Ansible is "**agentless**", using SSH to push changes from a single source to multiple remote resources.
Ansible uses <b>playbook</b> to describe automation jobs, and playbook uses very simple language i.e. **YAML** (Yet Another Markup Language - human readable data serialization language commonly used to write configuration files ).

<font color="red"><b>How Ansible Works?</b></font>
Ansible works by connecting the control server to the remote nodes via **playbook which contains the modules** that are pushed (over SSH) and executed by the ansible server on the remote nodes and removes these modules when the task is finished. The **inventory** file provides the list of hosts where the Ansible modules needs to be run and the management node does a SSH connection and executes the small modules on the hosts machine and installs the product/software.

![](https://www.tutorialspoint.com/ansible/images/ansible_works.jpg)
