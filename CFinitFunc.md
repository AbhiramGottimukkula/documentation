# Cloud Formation Init Function And User Data

## using cfn-init :
```
      "webServerInstance1" : {
        "Type" : "AWS::EC2::Instance",
        "Metadata" : {
          "Comment" : "Node(client) with boot.sh copied from s3",
          "AWS::CloudFormation::Init" : {
            "configSets" : {
              "InstallAndRun" : [ "Configure" ]
             },
              "Configure":{
                  "commands" : {
                      "test" : {
                          "command" : "mkdir dexter",
                          "cwd" : "/home/ubuntu/"
                      }
                  }
              }
          } 
        },
        "Properties" : {
          "ImageId" : "ami-8e675ff4",
          "SecurityGroupIds" : [{ "Ref" : "instanceSecurityGroup" }],
          "SubnetId" : { "Ref" : "publicSubnet" },
          "InstanceType" : { "Ref" : "instanceType" },
          "KeyName" : { "Ref" : "keyName" },
          "IamInstanceProfile" : {
            "Ref" : "InstanceProfile"
          },
          "UserData" : { "Fn::Base64" :
            { "Fn::Join" : ["", [
               "#!/bin/bash\n",
               "easy_install https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz\n",
               
               "cfn-init -v",
               "         --stack ", { "Ref" : "AWS::StackName" },
               "         --resource webServerInstance1",
               "         --configsets InstallAndRun ",
               "         --region ", { "Ref" : "AWS::Region" }, "\n"
            ]]}
           }
        }
      }
```
* Above code creates a directory named dexter in "/home/ubuntu/"
* To execute this code we need to install cfn-init and this service executes what ever function we write in "AWS::CloudFormation::Init"
* takes aroud 15 min to execute

## using userdata

```
      "webServerInstance4" : {
        "Type" : "AWS::EC2::Instance",
        "Metadata" : {
          "Comment" : "Node(client) with boot.sh copied from s3"
        },
        "Properties" : {
          "ImageId" : "ami-8e675ff4",
          "SecurityGroupIds" : [{ "Ref" : "instanceSecurityGroup" }],
          "SubnetId" : { "Ref" : "publicSubnet" },
          "InstanceType" : { "Ref" : "instanceType" },
          "KeyName" : { "Ref" : "keyName" },
          "IamInstanceProfile" : {
            "Ref" : "InstanceProfile"
          },
          "UserData" : { "Fn::Base64" :
            { "Fn::Join" : ["", [
               "#!/bin/bash\n",
               "echo userdata script start\n", 
               "date\n",
                "aws s3 cp s3://hacker-rank-devops-dev/testscript.sh /home/ubuntu/ --region=us-east-1\n"
                "pwd\n",
                "./home/ubuntu/testscript.sh"
            ]]}
          }
        }
      }
```
* In the Above code we are just using userdata field to execute s3 commands
* takes 15 minutes to execute after instance is up!