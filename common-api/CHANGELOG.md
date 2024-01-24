# #0.3.12
# Changes since #0.3.11
[#101](https://github.com/ditkrg/helm-charts/pull/101) add `.Values.metrics` & `.Values.otel` to deployment pods.
### BREAKING
1. `.annotations` has been renamed to `.podAnnotations`.

# #0.3.11
# Changes since #0.3.10
[#99](https://github.com/ditkrg/helm-charts/pull/99) add `.Values.migration.command` to migrations.

# #0.3.10
# Changes since #0.3.9
[#97](https://github.com/ditkrg/helm-charts/pull/97) add extraVolumes and extraVolumeMounts.

# #0.3.9
# Changes since #0.3.8
[#96](https://github.com/ditkrg/helm-charts/pull/96) add hostAliases.

# #0.3.8
# Changes since #0.3.7
[#93](https://github.com/ditkrg/helm-charts/pull/93) update how liveness/readiness values are acquired.

# #0.3.7
# Changes since #0.3.6
[#90](https://github.com/ditkrg/helm-charts/pull/90) pre-install infisical sealed secret

# #0.3.4 - 0.3.5 - 0.3.6
# Changes since #0.3.3
[#86](https://github.com/ditkrg/helm-charts/pull/86) add infisical.

# #0.3.3
# Changes since #0.3.2
[#77](https://github.com/ditkrg/helm-charts/pull/77) update common chart to 0.2.0 & fix typos in values file.

# #0.3.2
# Changes since #0.3.1
[#74](https://github.com/ditkrg/helm-charts/pull/74) use 'common.names.name' function to set main resources names.

# #0.3.1
# Changes since #0.3.0
[#70](https://github.com/ditkrg/helm-charts/pull/70) update common chart to 0.1.9.
[#66](https://github.com/ditkrg/helm-charts/pull/66) add missing global values.
[#65](https://github.com/ditkrg/helm-charts/pull/65) update common chart to 0.1.8

# #0.3.0
# Changes since #0.2.9
[#59](https://github.com/ditkrg/helm-charts/pull/59) adjust network policy values

# #0.2.9
# Changes since #0.2.8
[#43](https://github.com/ditkrg/helm-charts/pull/43) add networkpolicy
[#44](https://github.com/ditkrg/helm-charts/pull/44) change networkPolicy egress/ingress from an array to an dictionary
[#45](https://github.com/ditkrg/helm-charts/pull/45) fix bug
[#46](https://github.com/ditkrg/helm-charts/pull/46) fix bug
[#47](https://github.com/ditkrg/helm-charts/pull/47) fix bug

# #0.2.8
# Changes since #0.2.7
[#31](https://github.com/ditkrg/helm-charts/pull/31) move the infisical annotation to the deployment instead of the pod

# #0.2.7
# Changes since #0.2.6
[#28](https://github.com/ditkrg/helm-charts/pull/28) add sealedSecrets checksum to auto redeploy on sealed secrets change

# #0.2.6
# Changes since #0.2.5
[#23](https://github.com/ditkrg/helm-charts/pull/23) Capitalizes Gateway__Certificate

# #0.2.5
# Changes since # 0.2.4
[#19](https://github.com/ditkrg/helm-charts/pull/19) change the way readiness/liveness prob are applied

# #0.2.4
# Changes since #0.2.3
[#14](https://github.com/ditkrg/helm-charts/pull/14) fix sealed secret name.

# #0.2.3
# Changes since #0.2.2
[#9](https://github.com/ditkrg/helm-charts/pull/9) added `sealedSecrets` to the chart (check readme).
