## clusterIssuer Type

`object` ([clusterIssuer](values-properties-global-properties-checkdefaults-properties-certmanager-properties-clusterissuer.md))

# clusterIssuer Properties

| Property      | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                             |
| :------------ | :------- | :------- | :------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [name](#name) | `string` | Required | cannot be null | [Values](values-properties-global-properties-checkdefaults-properties-certmanager-properties-clusterissuer-properties-name.md "undefined#/properties/global/properties/checkDefaults/properties/certManager/properties/clusterIssuer/properties/name") |

## name

Name of the ClusterIssuer to be used to generate TLS certificates
for the measured Ingress object. Defaults to
.checkDefaults.certManager.clusterIssuer.name

`name`

* is required

* Type: `string` ([name](values-properties-global-properties-checkdefaults-properties-certmanager-properties-clusterissuer-properties-name.md))

* cannot be null

* defined in: [Values](values-properties-global-properties-checkdefaults-properties-certmanager-properties-clusterissuer-properties-name.md "undefined#/properties/global/properties/checkDefaults/properties/certManager/properties/clusterIssuer/properties/name")

### name Type

`string` ([name](values-properties-global-properties-checkdefaults-properties-certmanager-properties-clusterissuer-properties-name.md))

### name Default Value

The default value is:

```json
"letsencrypt-giantswarm"
```
