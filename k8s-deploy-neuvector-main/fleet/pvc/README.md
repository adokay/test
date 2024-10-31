# NeuVector custom PVC

Helm-Chart to deploy own PVC and let use NeuVector an already existing one.

## Default values

| Name                                            | Description                                                                                                               | Value                             |
|-------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|-----------------------------------|
| global.name                                     | Name of the PVC that will be created                                                                                      | neuvector-persistent-data         |
| global.storage.class                            | StorageClass for PVC                                                                                                      | infrastructure-nfs-storage        |
| global.storage.size                             | PVC size                                                                                                                  | 10Gi                              |
| global.storage.accessMode                       | Access Mode that will be used                                                                                             | ReadWriteMany                     |
| global.helm.resourcePolicy                      | Resource Policy for Helm                                                                                                  | keep                              |
