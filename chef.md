# CHEF:

## Workstations:
    A workstation is a computer running the chefDevelopmentKit that is used to author cookbooks,interact with Chef server ,and interact with the nodes.
## knife
    knife is a command-line tool that provides an interface between a local chef-repo and the chef server.

## Chef-repo:
    The chef-repo is a directory on your workstation that stores:

* .chef
* Cookbooks
* Roles
* Databags
* Environments


## About Nodes:
    A Node is a machine-physical, virtual,cloud,network device,etc. - that is under managment of chef.

### Key components of nodes are :

* Chef-client:
    * A chef-client is an agent that runs locally on every node that is under managment by chef.
    * When chef-client is run,it will perform all of the steps required to bring the node into the expected sate.

* Ohai:
    * Ohai is a tool that is used to collect system configuration data,which is provided to the chef-client for use within cookbooks.

* Run-lists:
    * A run-list defines all of the information necessary for chef to configure a node into the desired state.
    * format
        * 'role[NAME]' or 'receipe[COOKBOK::RECIPE]' OR 'RECIPE[COOKBOOK::RECIPE],COOKBOOK::RECIPE,role[NAME]'
* Manage Nodes:
    * Knife
    * Chef Automate
    * Command-line tools

* Node Objects
    Two important aspects of node are groups of attributes and runlists.
    * An Attribute is a specific detail about a node.Attributes are used by the chef-client to understand:
        * The current state of the node.
        * what was the state of the node at the end of previous chef-client run
        * what the state of the node at the end of current chef-client run
    *  A run-list is an ordered list of recipes and/or roles that are run in an exact order.

* Attributes
    An attribute is a specific detail about a node, such as an IP address, a host name, a list of loaded kernel modules, the version(s) of available programming languages that are available, and so on.

* Attribute Types
    Chef-client uses six types of attributes to determine the value that is applied to a node during the chef-client run.
    * default
    * force_default
    * normal
    * override
    * force_override
    * automatic

## Chef Client Overview

* The chef-client run
    A "chef-client run" is the term used to describe a series of steps that are taken by the chef-client when it is configuring a node.
    1. Get configuration data.
        * client.rb
        * ohai
    2. Authenticate to the chef server.
        * chef-validator to generate RSA private key
    3. Get, rebuild the node object
    4. Expand the run-list
    5. Synchronize cookbooks
    6. Reset node attributes
    7. compile the resource collection
        * compile phase
    8. Converge the node
        * execution phase
    9. Update the node object,process exception and report handlers
    10. Stop,wait for the next run

* About why-run mode
    why-run mode is a way to see what the chef-client would have configured, had an actual chef-client run occurred.

* Authentication
* chef-validator
* SSL Certificates
* SSL Verfication
    * `knife client list`
* knife Subcommands
    * `knife ssl check`
    * `knife ssl fetch`
* Bootstrap operations
    * `knife bootstrap`
