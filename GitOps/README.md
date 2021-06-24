# Install an ADS decision service on an existing OpenShift Cluster using GitOps

This project is built around a unique repository structure with folders representing the different components of the solution. 
Basically we have the following structure:

* Assess Credit Risk to include all the elements for ADS decision service
* CreditOriginationApp a Java Quarkus client app to prepare the data for the credit, call the decision service and get the response. 
The idea is to share best practice on how decision service can be integrated with some focus on data for the deicison.
* GitOps folder to include environment deployment definitions and application deployment manifests to be used by
Tekton pipeline and ArgoCD deployment. 


## Pre-requisites

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

## Pipeline definitions

The decision service client application has its own build pipeline defined in its git repo, which is here under 
the `CreditOriginationApp/build` folder.
