#1 /bin/bash
set -e

echo Main App STARTING pushing image...

echo Main App get login...
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 739411955168.dkr.ecr.us-east-1.amazonaws.com

echo Main App tag application...
docker tag ci-cd-practise:latest 739411955168.dkr.ecr.us-east-1.amazonaws.com/ci-cd-practise:latest

echo Main App push image...
docker push 739411955168.dkr.ecr.us-east-1.amazonaws.com/ci-cd-practise:latest

echo Main App FINISHED image has been pushed