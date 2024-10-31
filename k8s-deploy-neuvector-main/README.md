# k8s-deploy-neuvector

Fleet repository to deploy NeuVector to our managed clusters.
Secrets will be deployed with Ansible as long Vault is not implemented yet.

This Pipeline uses the offical NeuVector Helm-Charts:

* [Core](https://github.com/neuvector/neuvector-helm/tree/master/charts/core)
* [CRD](https://github.com/neuvector/neuvector-helm/blob/master/charts/crd)
* [Monitor](https://github.com/neuvector/neuvector-helm/blob/master/charts/monitor)

Additional there will be a Helm-Release for:

* PVC: To make sure NeuVector uses a already existing PVC and doesn't create a new one
* NeuVector-Security: To deploy global NeuVector CRDs (for example global groups, DLP/WAF, sensors, ...)

## Requirements

* Kubernetes in Version 1.21.x or higher
* Persistent storage to create the PVC ([k8s-deploy-nfs-provisioner](https://gitlab.k8s.akdb.net/t632/ansible-roles/k8s-deploy-nfs-provisioner/-/blob/master/README.md))
* LDAP Secret to manage cluster authentication over LDAP / ActiveDirectory
