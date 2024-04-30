## matchLabels Type

`object` ([matchLabels](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-selector-properties-matchlabels.md))

# matchLabels Properties

| Property                                               | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                                                                                                                    |
| :----------------------------------------------------- | :------- | :------- | :------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [app.kubernetes.io/instance](#appkubernetesioinstance) | `string` | Required | cannot be null | [Values](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-selector-properties-matchlabels-properties-appkubernetesioinstance.md "undefined#/properties/global/properties/checkDefaults/properties/blackboxExporter/properties/selector/properties/matchLabels/properties/app.kubernetes.io/instance") |
| [app.kubernetes.io/name](#appkubernetesioname)         | `string` | Required | cannot be null | [Values](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-selector-properties-matchlabels-properties-appkubernetesioname.md "undefined#/properties/global/properties/checkDefaults/properties/blackboxExporter/properties/selector/properties/matchLabels/properties/app.kubernetes.io/name")         |

## app.kubernetes.io/instance



`app.kubernetes.io/instance`

* is required

* Type: `string` ([app.kubernetes.io/instance](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-selector-properties-matchlabels-properties-appkubernetesioinstance.md))

* cannot be null

* defined in: [Values](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-selector-properties-matchlabels-properties-appkubernetesioinstance.md "undefined#/properties/global/properties/checkDefaults/properties/blackboxExporter/properties/selector/properties/matchLabels/properties/app.kubernetes.io/instance")

### instance Type

`string` ([app.kubernetes.io/instance](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-selector-properties-matchlabels-properties-appkubernetesioinstance.md))

### instance Default Value

The default value is:

```json
"prometheus-blackbox-exporter"
```

## app.kubernetes.io/name



`app.kubernetes.io/name`

* is required

* Type: `string` ([app.kubernetes.io/name](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-selector-properties-matchlabels-properties-appkubernetesioname.md))

* cannot be null

* defined in: [Values](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-selector-properties-matchlabels-properties-appkubernetesioname.md "undefined#/properties/global/properties/checkDefaults/properties/blackboxExporter/properties/selector/properties/matchLabels/properties/app.kubernetes.io/name")

### name Type

`string` ([app.kubernetes.io/name](values-properties-global-properties-checkdefaults-properties-blackboxexporter-properties-selector-properties-matchlabels-properties-appkubernetesioname.md))

### name Default Value

The default value is:

```json
"prometheus-blackbox-exporter"
```
