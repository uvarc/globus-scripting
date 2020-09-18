# globus-sync

**proof of concept**

A simple container that will synchronize two directories between two Globus DTNs.

Assumes a human user has manually authenticated her/his globus-cli locally to obtain a `.globus.cfg` file that can be injected at runtime.

## To run, map in a config file for authentication and populate a `ORIGIN` and `DESTINATION` ENV variable:

```
docker run -it -v ~/.globus.cfg:/root/.globus.cfg \
  -e ORIGIN="aa7c63e2-c838-11ea-bef9-0e716405a293:somrc/nem2p/" \
  -e DESTINATION="c4d80096-7612-11e7-8b5e-22000b9923ef:home/nem2p/" \
  uvarc/globus-mover /bin/bash /sync.sh
```
