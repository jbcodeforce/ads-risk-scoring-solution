#!/bin/bash


function checkPrerequisites() {
  TEKTON_SERVICE_PORT=$(oc get service tekton-pipelines-controller -n openshift-pipelines --ignore-not-found --output 'jsonpath={.spec.ports[*].port}')
  if [[ -z $TEKTON_SERVICE_PORT ]] 
  then
    echo Tekton is not available. 
    echo Install the OpenShift Pipelines operator.
  else
    MISSING_TOOLS=""
    git --version &> /dev/null || MISSING_TOOLS="${MISSING_TOOLS} git"
    curl --version &> /dev/null || MISSING_TOOLS="${MISSING_TOOLS} curl"
    which oc &> /dev/null || MISSING_TOOLS="${MISSING_TOOLS} oc"
    if [[ -n "$MISSING_TOOLS" ]]; then
      echo "Some tools (${MISSING_TOOLS# }) could not be found, please install them first"
      exit 1
    else
      echo You have all necessary prerequisites installed
    fi
  fi
}

checkPrerequisites