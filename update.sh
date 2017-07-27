#! /bin/bash
#pushd ../labpal-user-manual
#git pull
#popd
rsync -arv --exclude '.git/' ../labpal-user-manual/ Source/markdown/