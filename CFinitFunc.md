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
                          "command" : "mkdir abhiram",
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
               "aws configure set default.region us-east-1a\n",
                "aws s3 cp s3://extdev-ops/testscript.sh /home/ubuntu/\n",
                "pwd\n",
                "./home/ubuntu/testscript.sh"
            ]]}
          }
        }
      }
```
