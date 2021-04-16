#1 /bin/bash
set -e

echo Main App STARTING removing previous image...

if [ "$(docker ps -aq -f status=exited -f name=ci_cd_app_1)" ];
then
  docker container rm  ci_cd_app_1
  echo Main App removed previous image succesfully
else
  echo "Previous container doesn't exist"
fi

echo Main App STARTING building image...
docker-compose build
echo Main App has been build sucessfully

echo Main App STARTING running image...
docker-compose up
echo Main App finished working