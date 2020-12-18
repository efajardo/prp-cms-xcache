.PHONY: configmap

configmap:
	-kubectl delete configmap cms-xcache-bcache-1-ucsd -n cms-admin
	kubectl create configmap cms-xcache-bcache-1-ucsd -n cms-admin --from-file=95-local-ucsd.cfg
	-kubectl delete configmap cms-xcache-bcache-1-ucsd -n osg
	kubectl create configmap cms-xcache-bcache-1-ucsd -n osg --from-file=95-local-ucsd.cfg
secrets:
	-kubectl delete secret esnet-certs -n cms-admin
	kubectl create secret generic esnet-certs -n cms-admin --from-file=hostcert=esnetCerts/hostcert.pem --from-file=hostkey=esnetCerts/hostkey.pem
	-kubectl delete secret bcache1-certs -n cms-admin
	kubectl create secret generic bcache1-certs -n cms-admin --from-file=hostcert=bcache1Certs/hostcert.pem --from-file=hostkey=bcache1Certs/hostkey.pem
