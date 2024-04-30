## items Type

`object` ([Details](values-properties-global-properties-checks-items.md))

# items Properties

| Property                              | Type     | Required | Nullable       | Defined by                                                                                                                                                                   |
| :------------------------------------ | :------- | :------- | :------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [baseDomain](#basedomain)             | `string` | Optional | cannot be null | [Values](values-properties-global-properties-checks-items-properties-basedomain.md "undefined#/properties/global/properties/checks/items/properties/baseDomain")             |
| [blackboxExporter](#blackboxexporter) | `object` | Optional | cannot be null | [Values](values-properties-global-properties-checks-items-properties-blackboxexporter.md "undefined#/properties/global/properties/checks/items/properties/blackboxExporter") |
| [certManager](#certmanager)           | `object` | Optional | cannot be null | [Values](values-properties-global-properties-checks-items-properties-certmanager.md "undefined#/properties/global/properties/checks/items/properties/certManager")           |
| [ingressClass](#ingressclass)         | `string` | Optional | cannot be null | [Values](values-properties-global-properties-checks-items-properties-ingressclass.md "undefined#/properties/global/properties/checks/items/properties/ingressClass")         |

## baseDomain

Base domain for the ingress, defaults to .checkDefaults.baseDomain.

`baseDomain`

* is optional

* Type: `string`

* cannot be null

* defined in: [Values](values-properties-global-properties-checks-items-properties-basedomain.md "undefined#/properties/global/properties/checks/items/properties/baseDomain")

### baseDomain Type

`string`

## blackboxExporter



`blackboxExporter`

* is optional

* Type: `object` ([Details](values-properties-global-properties-checks-items-properties-blackboxexporter.md))

* cannot be null

* defined in: [Values](values-properties-global-properties-checks-items-properties-blackboxexporter.md "undefined#/properties/global/properties/checks/items/properties/blackboxExporter")

### blackboxExporter Type

`object` ([Details](values-properties-global-properties-checks-items-properties-blackboxexporter.md))

## certManager



`certManager`

* is optional

* Type: `object` ([Details](values-properties-global-properties-checks-items-properties-certmanager.md))

* cannot be null

* defined in: [Values](values-properties-global-properties-checks-items-properties-certmanager.md "undefined#/properties/global/properties/checks/items/properties/certManager")

### certManager Type

`object` ([Details](values-properties-global-properties-checks-items-properties-certmanager.md))

## ingressClass

Ingress class, subject to SLA.

`ingressClass`

* is optional

* Type: `string`

* cannot be null

* defined in: [Values](values-properties-global-properties-checks-items-properties-ingressclass.md "undefined#/properties/global/properties/checks/items/properties/ingressClass")

### ingressClass Type

`string`
