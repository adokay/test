# neuvector-config

Helm-Chart to deploy NeuVector (init-)configmaps.

Nice-to-know: [NeuVector ConfigMaps and Persistent Storage](https://open-docs.neuvector.com/deploying/production/configmap#configmaps-and-persistent-storage)

## Default values

| Name                                            | Description                                                                                                               | Value                             |
|-------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|-----------------------------------|
| neuvector.sysinitcfg.alwaysReload               | If disabled, NeuVector only reads from ConfigMap in case of a new Cluster or if the Cluster fails.                        | false                             |
| neuvector.sysinitcfg.newServicePolicyMode       | Set the default policy mode for new discovered services (either 'Discovery', 'Monitor' or 'Protect')                      | Discovery                         |
| neuvector.sysinitcfg.newServiceProfileBaseline  | Set the default profile baseline for new discovered services (either 'basi' or 'zero-drift')                              | basic                             |
| neuvector.sysinitcfg.clusterName                | Displayed name of the cluster (injected over `fleet.yaml`)                                                                | ""                                |
| neuvector.sysinitcfg.monitorServiceMesh         | Enable / Disable monitoring of Service-Mesh's                                                                             | true                              |
| neuvector.sysinitcfg.registryHttpProxy          | Activate / Deactivate a http proxy for registry scans                                                                     | false                             |
| neuvector.sysinitcfg.registryHttpsProxy         | Activate / Deactivate a https proxy for registry scans                                                                    | false                             |
| neuvector.sysinitcfg.proxyURL                   | Proxy URL (+ Port) that will be used for registry scans if activated                                                      | http://proxy.akdb.net:3128        |
| neuvector.sysinitcfg.xffEnabled                 | Enable / Disable XFF                                                                                                      | true                              |
| neuvector.sysinitcfg.netServiceStatus           | Enable / Disable the global Network Security Policy Mode - should be disabled if we want to use the Group Policy Mode instead | false                         |
| neuvector.sysinitcfg.netServicePolicyMode       | If global Network Security Policy Mode is activated, set policy mode here (either 'Discovery', 'Monitor' or ' Protect')   | Monitor                           |
| neuvector.sysinitcfg.scannerAutoscale.strategy  | Strategy for scanne autoscaling (either 'Immediate', 'Delayed' or 'Disabled')                                             | Delayed                           |
| neuvector.sysinitcfg.scannerAutoscale.minPods   | Minimum scanner pods / replicas that should be available inside the cluster                                               | 2                                 |
| neuvector.sysinitcfg.scannerAutoscale.maxPods   | Maximum scanner pods / replicas that should be available inside the cluster                                               | 5                                 |
| neuvector.sysinitcfg.noTelemetryReport          | Disable / Enable telemetry report                                                                                         | true                              |
| neuvector.sysinitcfg.autoScan                   | Enable / Disable auto scan of new discovered groups                                                                       | true                              |
| neuvector.sysinitcfg.unusedGroupAging           | Groups with no members (e.g. pods/containers) will be deleted automatically if they remain unused for this amount of time | 48                                |
