
aws s3 cp s3://hacker-rank-devops-dev/node ~/.ssh/ --region=us-east-1
aws s3 cp s3://hacker-rank-devops-dev/node.pub ~/.ssh/ --region=us-east-1

chmod 600 /home/ubuntu/.ssh/node
chmod 600 /home/ubuntu/.ssh/node.pub
eval "$(ssh-agent -s)"
ssh-add /home/ubuntu/.ssh/node
chown ubuntu:ubuntu node
chown ubuntu:ubuntu node.pub

ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts

git clone git@github.com:AbhiramGottimukkula/hackerrank.git

chown