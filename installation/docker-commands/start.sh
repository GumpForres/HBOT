#!/bin/bash
# init
# =============================================
# SCRIPT COMMANDS
echo
echo "===============  START HBOT INSTANCE ==============="
echo
echo "List of all docker instances:"
echo
docker ps -a
echo
echo
read -p "   Enter the NAME of the Hbot instance to start or connect to (default = \"hbot\") >>> " INSTANCE_NAME
if [ "$INSTANCE_NAME" == "" ]
then
  INSTANCE_NAME="hbot"
fi
echo
# =============================================
# EXECUTE SCRIPT
docker start $INSTANCE_NAME && docker attach $INSTANCE_NAME