Cloud Formation:
what?
    Service provided my AWS to manage other aws resources like EC2,s3,autoscaling,loadbalancing etc.,
    collectively as a single unit in a proper orderly fashion(means one by one).

where?
    We can find Cloud Formaton in Services --> Managment Tools --> CloudFormation

why?
    If we are creating a new application which needs many of the aws resources like EC2,s3,autoscaling,loadbalancing etc., and these resources are dependent on each other, what we normally do is, go to each of this service and create them manually and give them permissions to connect to each other.

    This above problem can be solved using cloud formation service provided by aws!

    Two new concepts which needs to be learnt to use cloudFormation service:
    Cloud formation template(JSON or YAML formates):
        it is a text based file describes all aws resources that needs to be deployed to run application
    Cloud formation stack:
        its a set of aws resourses created and managed as a single unit when awsCF instantiates(represent) a template

how?
    Basic Wordpress using Cloud Formation - STEPS:
    ---> As you enter into aws cloud Formation service in aws console,we will find an option with create stack where we can design a template in JSON or YAML or upload an existing template.

    --->By default we can choose a template 
        -> select a sample template -> wordpress blog -> press (View/Edit template in Designer)

    --->we will seeing the GUI of the provided by cloud formation service and also template generated of the 
        wordpress blog we selected.
    
    --->this wordpress blog will create an EC2 instance with mysql databases by default.

    --->provide db details required in the next page and finally create your first wordpress cloud formation stack.

    ---> go to cloud formation home page and you will see your wordpress website created from cloudFormation.

Advantages:
    --->no need to create and configure resource independently
    --->saves time managing resources independently
    --->can focus more time on application development
    --->can also manage each resource independently
    --->Quickly replicating our infrastructure:
        ->so if we need to replicate resources in multiple regions we just have to reuse this template.
    --->Easily control and track changes to our infrastructure
        ->In the template itself we can give change versions which ever required and fallback to old versions if we     get any errors.
        ->we can also keep a track of any changes we made in template


    


