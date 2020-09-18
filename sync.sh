#!/bin/bash

# In order for this CLI to work it must have a .globus.cfg file with proper keys/tokens in the home dir of the user
# i.e. /root/.globus.cfg within the container. This can be injected at runtime from storage or as an encrypted secret.

# Uses the basic "globus transfer" command to move a single file over. 
# First UUID is the Ivy-DTN, second UUID is the UVA-Main-DTN

# Transfer based on ENV variables
/usr/local/bin/globus transfer $ORIGIN $DESTINATION

# Should create a full command like this:
# /usr/local/bin/globus transfer aa7c63e2-c838-11ea-bef9-0e716405a293:somrc/nem2p/zeros.1G c4d80096-7612-11e7-8b5e-22000b9923ef:home/nem2p/zeros.1G

# To transfer/sync an entire directory, leave off the filenames at the end of each endpoint and add the -r recursive flag:
# /usr/local/bin/globus transfer -r aa7c63e2-c838-11ea-bef9-0e716405a293:somrc/nem2p/ c4d80096-7612-11e7-8b5e-22000b9923ef:home/nem2p/
