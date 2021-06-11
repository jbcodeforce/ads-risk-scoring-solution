#!/bin/bash

scriptDir=$(dirname $0)

tkn pipeline start build-and-deploy -p git-url=https://github.com/jbcodeforce/ads-risk-scoring-solution.git \
-w name=shared-workspace,volumeClaimTemplateFile=$scriptDir/../apps/pvc.yaml \
 -p IMAGE=image-registry.openshift-image-registry.svc:5000/ibmcase/CreditOriginationApp \
 -p app-folder=CreditOriginationApp \
 -p deployment-name=CreditOriginationApp 