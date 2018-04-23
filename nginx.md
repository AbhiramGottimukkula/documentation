# NGINX:

* source:
    * https://www.digitalocean.com/community/tutorials/understanding-the-nginx-configuration-file-structure-and-configuration-contexts

## Introduction:
Nginx is a high performance web server that is responsible for handling the load of some of the lagest sites on internet.It is especially good at handling many concurrent connections and excels at serving static content.

* config file location is
    `/etc/nginx/nginx.conf`

* The Main Context
    * The main context represents the broadest environment for Nginx configuration. It is used to configure details that affect the entire application on a basic level. 

* The Event Context
    * Nginx uses an event-based connection processing model, so the directives defined within this context determine how worker processes should handle connections. 

* The HTTP Context
    * When configuring Nginx as a web server or reverse proxy,the "http" context will hold the majority of the configuration.This context will contain all of the directives and other contexts necessary to define how the program will handle HTTP or HTTPS connections.

* The Server Context
    * The "server" context is declared within the "http" context.
    * The reason for allowing multiple declarations of the server context is that each instance defines a specific virtual server to handle client requests. You can have as many server blocks as you need, each of which can handle a specific subset of connections.
    * The directives which decide if a server block will be used to answer a request are listen and server_name.

* The Location Context
    *  Location contexts share many relational qualities with server contexts.
    * For example, multiple location contexts can be defined, each location is used to handle a certain type of client request, and each location is selected by virtue of matching the location definition against the client request through a selection algorithm.

### Other Contexts

* split_clients:
    * This context is configured to split the clients that the server receives into categories by labeling them with variables based on a percentage. These can then be used to do A/B testing by providing different content to different hosts.

* perl / perl_set:
    * These contexts configures Perl handlers for the location they appear in. This will only be used for processing with Perl.

* map
* geo
* types
* charset_map
* The Upstream Context
* The Mail Context
* The If Context
* The Limit_except Context

