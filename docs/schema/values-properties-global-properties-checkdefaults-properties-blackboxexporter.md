## blackboxExporter Type

`object` ([blackboxExporter](values-properties-global-properties-checkdefaults-properties-blackboxexporter.md))

# blackboxExporter Properties

| Property                                | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                               |
| :-------------------------------------- | :------- | :------- | :------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [namespaceSelector](#namespaceselector) | `object` | Required | cannot be null | [Values](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-namespaceselector.md "undefined#/properties/global/properties/checkDefaults/properties/blackboxExporter/properties/namespaceSelector") |
| [selector](#selector)                   | `object` | Required | cannot be null | [Values](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-selector.md "undefined#/properties/global/properties/checkDefaults/properties/blackboxExporter/properties/selector")                   |

## namespaceSelector

Namespace selector to select blackbox\_exporter Pod(s) as defined in
`kubectl explain servicemonitor.spec.namespaceSelector`. Can be
overwritten in a specific check.

`namespaceSelector`

* is required

* Type: `object` ([namespaceSelector](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-namespaceselector.md))

* cannot be null

* defined in: [Values](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-namespaceselector.md "undefined#/properties/global/properties/checkDefaults/properties/blackboxExporter/properties/namespaceSelector")

### namespaceSelector Type

`object` ([namespaceSelector](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-namespaceselector.md))

## selector

Selector to select blackbox\_exporter Pod(s) as defined in `kubectl
explain servicemonitor.spec.selector`. Defaults to
.checkDefaults.blackboxExporter.selector. Can be overwritten in a
specific check.

`selector`

* is required

* Type: `object` ([selector](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-selector.md))

* cannot be null

* defined in: [Values](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-selector.md "undefined#/properties/global/properties/checkDefaults/properties/blackboxExporter/properties/selector")

### selector Type

`object` ([selector](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-selector.md))
