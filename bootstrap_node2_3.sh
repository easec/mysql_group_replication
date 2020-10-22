#!/bin/bash

for N in 2 3
do docker exec -it node$N mysql -uroot -peasec \
  -e "change master to master_user='repl' for channel 'group_replication_recovery';" \
  -e "START GROUP_REPLICATION;"
done
