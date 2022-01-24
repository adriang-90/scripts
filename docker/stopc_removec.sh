#!/bin/sh

# Stop and remove all containers
echo "Removing containers:"
if [ -n "$(docker container ls -aq)" ]; then
  docker container stop $(docker container ls -aq);
  docker container rm $(docker container ls -aq);
fi;
echo "All done!"
