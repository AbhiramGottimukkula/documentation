# CHEF:

## Workstations:
    A workstation is a computer running the chefDevelopmentKit that is used to author cookbooks,interact with Chef server ,and interact with the nodes.
## knife
    knife is a command-line tool that provides an interface between a local chef-repo and the chef server.

## Chef-repo:
    The chef-repo is a directory on your workstation that stores:

* /.chef
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

