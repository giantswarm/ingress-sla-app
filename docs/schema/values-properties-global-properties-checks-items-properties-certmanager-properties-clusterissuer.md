## clusterIssuer Type

`object` ([Details](values-properties-global-properties-checks-items-properties-certmanager-properties-clusterissuer.md))

# clusterIssuer Properties

| Property      | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                           |
| :------------ | :------- | :------- | :------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [name](#name) | `string` | Optional | cannot be null | [Values](values-properties-global-properties-checks-items-properties-certmanager-properties-clusterissuer-properties-name.md "undefined#/properties/global/properties/checks/items/properties/certManager/properties/clusterIssuer/properties/name") |

## name

Name of the ClusterIssuer to be used to generate TLS
certificates for the measured Ingress object. Defaults to
.checkDefaults.certManager.clusterIssuer.name

`name`

* is optional

* Type: `string`

* cannot be null

* defined in: [Values](values-properties-global-properties-checks-items-properties-certmanager-properties-clusterissuer-properties-name.md "undefined#/properties/global/properties/checks/items/properties/certManager/properties/clusterIssuer/properties/name")

### name Type

`string`
