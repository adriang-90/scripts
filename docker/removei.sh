#!/bin/sh

# Remove all images
echo "Removing all images..."
if [ -n "$(docker images -aq)" ]; then
  docker rmi -f $(docker images -aq);
echo "All done!"
else echo "There is nothing to remove."
fi;
