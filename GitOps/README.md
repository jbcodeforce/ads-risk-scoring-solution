# Install an ADS decision service on an existing OpenShift Cluster using GitOps

## Pre-requisites¶
The following is required before proceeding to the next section.

* Provision an OpenShift cluster.
* IBM Cloud Pak Entitlement Key

## Operators Installation

1. Install the Red Hat OpenShift GitOps operator to support ArgoCD deployment

  ```sh
  oc apply -f GitOps/services/openshift-gitops/operator.yaml
  ```

1. Install The Red Hat OpenShift Pipeline operator to support Tekton pipelines 

  ```sh
  oc apply -f GitOps/services/openshift-pipelines/operator.yaml
  ```

## Pipeline definition

