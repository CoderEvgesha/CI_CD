#1 /bin/bash
set -e

echo Main App STARTING building image...

echo Main App creating jar...
gradle bootJar

echo Main App creating docker image...
docker build -t ci-cd-practise .

echo Main App FINISHED image has been built