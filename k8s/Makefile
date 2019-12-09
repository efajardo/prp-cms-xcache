.PHONY: configmap

configmap:
#	-kubectl delete secret cms-xcache-bcache-1-ucsd -n cms-admin
#	kubectl create secret generic cms-xcache-bcache-1-ucsd -n cms-admin \
		--from-file=00-create-dirs.sh
	-kubectl delete configmap cms-xcache-bcache-1-ucsd -n cms-admin
	kubectl create configmap cms-xcache-bcache-1-ucsd -n cms-admin \
		--from-file=90-node-disks.cfg --from-file=95-local-ucsd.cfg --from-file=00-create-dirs.sh --from-file=Authfile-cms-xcache
	-kubectl delete configmap cms-xcache-bcache-1-ucsd -n osg
	kubectl create configmap cms-xcache-bcache-1-ucsd -n osg \
                --from-file=90-node-disks.cfg --from-file=95-local-ucsd.cfg --from-file=00-create-dirs.sh --from-file=Authfile-cms-xcache
	-kubectl delete configmap cms-xcache-xcache-11-ucsd -n osg
	kubectl create configmap cms-xcache-xcache-11-ucsd -n osg \
		--from-file=90-node-xcache-11-disks.cfg
