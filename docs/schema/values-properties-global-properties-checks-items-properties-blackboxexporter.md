## blackboxExporter Type

`object` ([Details](values-properties-global-properties-checks-items-properties-blackboxexporter.md))

# blackboxExporter Properties

| Property                                | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                             |
| :-------------------------------------- | :------- | :------- | :------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [namespaceSelector](#namespaceselector) | `object` | Optional | cannot be null | [Values](values-properties-global-properties-checks-items-properties-blackboxexporter-properties-namespaceselector.md "undefined#/properties/global/properties/checks/items/properties/blackboxExporter/properties/namespaceSelector") |
| [selector](#selector)                   | `object` | Optional | cannot be null | [Values](values-properties-global-properties-checks-items-properties-blackboxexporter-properties-selector.md "undefined#/properties/global/properties/checks/items/properties/blackboxExporter/properties/selector")                   |

## namespaceSelector

Namespace selector to select blackbox\_exporter Pod(s) as defined
in `kubectl explain servicemonitor.spec.namespaceSelector`.
Defaults to .checkDefaults.blackboxExporter.namespaceSelector.

`namespaceSelector`

* is optional

* Type: `object` ([Details](values-properties-global-properties-checks-items-properties-blackboxexporter-properties-namespaceselector.md))

* cannot be null

* defined in: [Values](values-properties-global-properties-checks-items-properties-blackboxexporter-properties-namespaceselector.md "undefined#/properties/global/properties/checks/items/properties/blackboxExporter/properties/namespaceSelector")

### namespaceSelector Type

`object` ([Details](values-properties-global-properties-checks-items-properties-blackboxexporter-properties-namespaceselector.md))

## selector

Selector to select blackbox\_exporter Pod(s) as defined in
`kubectl explain servicemonitor.spec.selector`. Defaults to
.checkDefaults.blackboxExporter.selector.

`selector`

* is optional

* Type: `object` ([Details](values-properties-global-properties-checks-items-properties-blackboxexporter-properties-selector.md))

* cannot be null

* defined in: [Values](values-properties-global-properties-checks-items-properties-blackboxexporter-properties-selector.md "undefined#/properties/global/properties/checks/items/properties/blackboxExporter/properties/selector")

### selector Type

`object` ([Details](values-properties-global-properties-checks-items-properties-blackboxexporter-properties-selector.md))
