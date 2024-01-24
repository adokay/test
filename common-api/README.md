### base keys

| key                      | type                       | default value | note                                                                                                                                                                              |
| ------------------------ | -------------------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `addRabbitMQDefaultCred` | bool                       | `false`       | adds the previously generated rabbitmq username/password the secret containing the cred should be called `rabbitmq-credentials` and the cred keys should be `username` `password` |
| `addRabbitMQDefaultUrl`  | bool                       | `false`       | adds the previously generated rabbitmq url the secret containing the url should be called `rabbitmq-credentials` and it should contain a key named `url`                          |
| `addGateWayPublicKey`    | bool                       | `true`        |                                                                                                                                                                                   |
| `addGateWayPrivateKey`   | bool                       | `false`       |                                                                                                                                                                                   |
| `infisicalAutoReload`    | bool                       | `false`       | add `secrets.infisical.com/auto-reload: "true"` annotation to deployment                                                                                                          |
| `minReadySeconds`        | int                        | `0`           |                                                                                                                                                                                   |
| `replicas`               | int                        | `1`           |                                                                                                                                                                                   |
| `port`                   | int                        | `8080`        |                                                                                                                                                                                   |
| `args`                   | string array               | `[]`          |                                                                                                                                                                                   |
| `env`                    | env object                 |               | check kubernetes docs                                                                                                                                                             |
| `envFrom`                | envFrom object             |               | check kubernetes docs                                                                                                                                                             |
| `secrets`                | dictionary(key value pair) |               |                                                                                                                                                                                   |
| `sealedSecrets`          |                            |               | check below                                                                                                                                                                       |
| `configs`                | dictionary(key value pair) |               |                                                                                                                                                                                   |
| `podAnnotations`         | dictionary(key value pair) |               | list of annotations to add to the deployment pod                                                                                                                                  |
| `livenessProbe`          | liveness object            | `check below` | check kubernetes docs                                                                                                                                                             |
| `readinessProbe`         | readiness object           | `check below` | check kubernetes docs                                                                                                                                                             |
| `hostAliases`            | hostAliases Object Array   | ``            | check kubernetes docs                                                                                                                                                             |
| `networkPolicy`          | network policy object      | `check below` |                                                                                                                                                                                   |
| `infisical`              | infisical object           | `check below` |                                                                                                                                                                                   |
| `extraVolumes`           | volume object array        | `[]`          | check kubernetes docs                                                                                                                                                             |
| `extraVolumeMounts`      | volume mount object array  | `[]`          | check kubernetes docs                                                                                                                                                             |
| `metrics`                | object                     |               | check below (add prometheus annotations to the deployment pod)                                                                                                                    |
| `otel`                   | object                     |               | check below                                                                                                                                                                       |

---

### `securityContext` values

| key            | type | default value | note |
| -------------- | ---- | ------------- | ---- |
| `runAsGroup`   | int  | `1001`        |      |
| `runAsNonRoot` | bool | `true`        |      |
| `runAsUser`    | int  | `1001`        |      |

---

### `image` values

| key          | type   | default value | note                                          |
| ------------ | ------ | ------------- | --------------------------------------------- |
| `fullPath`   | string |               | if set then the other values are not required |
| `registry`   | string | `reg.dev.krd` |                                               |
| `repository` | string |               | must be provided if `fullPath` not set        |
| `tag`        | string |               | must be provided if `fullPath` not set        |

---

### `resources` values

| key        | type   | default value | note      |
| ---------- | ------ | ------------- | --------- |
| `limits`   | object |               | see below |
| `requests` | object |               | see below |

---

### `resources.limits` values

| key      | type   | default value | note |
| -------- | ------ | ------------- | ---- |
| `memory` | string | `200Mi`       |      |

---

### `resources.requests` values

| key   | type   | default value | note |
| ----- | ------ | ------------- | ---- |
| `cpu` | string | `10m`         |      |

---

### `volume` values

| key         | type   | default value        | note                                                                                             |
| ----------- | ------ | -------------------- | ------------------------------------------------------------------------------------------------ |
| `configMap` | string |                      | name of the config map to get the value from, defaults to `{namespace}-{release name}-configmap` |
| `mountPath` | string | the path to mount to |                                                                                                  |
| `key`       | string |                      |                                                                                                  |

---

### `ingress` values

| key                | type   | default value                                                      | note                                 |
| ------------------ | ------ | ------------------------------------------------------------------ | ------------------------------------ |
| `enabled`          | bool   | `false`                                                            |                                      |
| `host`             | string |                                                                    | required if `enabled` is set to true |
| `annotations`      | object | `{"cert-manager.io/cluster-issuer": "letsencrypt-cluster-issuer"}` |                                      |
| `ingressClassName` | string | `nginx`                                                            |                                      |

---

### `migration` values

| key             | type         | default value | note |
| --------------- | ------------ | ------------- | ---- |
| `enabled`       | bool         | `false`       |      |
| `backoffLimit`  | int          | `2`           |      |
| `restartPolicy` | string       | `Never`       |      |
| `args`          | string array | `[]`          |      |
| `command`       | string array | `[]`          |      |

---
### `sealedSecrets` values

| key             | type                       | default value                  | note                                          |
| --------------- | -------------------------- | ------------------------------ | --------------------------------------------- |
| `enabled`       | bool                       | `false`                        |                                               |
| `name`          | int                        | `{Release.name}-sealed-secret` |                                               |
| `namespace`     | string                     | `Release.namespace`            |                                               |
| `encryptedData` | dictionary(key value pair) |                                | the value has to be encrypted by sealedSecret |

---
### `livenessProbe` values
| key                   | type       | default value |
| --------------------- | ---------- | ------------- |
| `enabled`             | bool       | `true`        |
| `spec.timeoutSeconds` | int        | `5`           |
| `spec.httpGet.path`   | string     | `/health`     |
| `spec.httpGet.port`   | string/int | `http`        |

---
### `readinessProbe` values
| key                   | type       | default value |
| --------------------- | ---------- | ------------- |
| `enabled`             | bool       | `true`        |
| `spec.timeoutSeconds` | int        | `5`           |
| `spec.httpGet.path`   | string     | `/status`     |
| `spec.httpGet.port`   | string/int | `http`        |

### `networkPolicy` values
| key       | type   | default value | note                                                             |
| --------- | ------ | ------------- | ---------------------------------------------------------------- |
| `enabled` | bool   | `false`       | if set to true then you need to provide either egress or ingress |
| `egress`  | object |               |                                                                  |
| `ingress` | object |               |                                                                  |

### `networkPolicy.egress|ingress` values
#### a dictionary of `<key, object>` the key can be any name, the object values are as seen below

| key              | type        | Note                                               |
| ---------------- | ----------- | -------------------------------------------------- |
| `ports`          | port object | check `NetworkPolicy.spec.egress.ports`            |
| `podMatchLabels` | dictionary  | provide `podMatchLabels` or `ipBlock`              |
| `namespace`      | string      | only provide namespace if you set `podMatchLabels` |
| `ipBlock`        | string      | provide `podMatchLabels` or `ipBlock`              |


### `infisical` values

| key                        | type   | default value                                  |
| -------------------------- | ------ | ---------------------------------------------- |
| `enabled`                  | bool   | `false`                                        |
| `secretsScope.secretsPath` | string |                                                |
| `secretsScope.envSlug`     | string |                                                |
| `sealedSecret.name`        | string | `{nameOverride\|Release.Name}-infisical-token` |
| `sealedSecret.namespace`   | string | `Release.Namespace`                            |
| `sealedSecret.token`       | string |                                                |
| `managedSecret.name`       | string | `{nameOverride\|Release.Name}-managed-secret`  |
| `managedSecret.namespace`  | string | `Release.Namespace`                            |


### `metrics` values

| key       | type   | default value |
| --------- | ------ | ------------- |
| `enabled` | bool   | `false`       |
| `path`    | string | `/metrics`    |

### `otel` values

| key       | type         | default value     |
| --------- | ------------ | ----------------- |
| `enabled` | bool         | `false`           |
| `env`     | array on env | check values.yaml |

