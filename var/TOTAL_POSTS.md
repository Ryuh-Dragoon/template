# TOTAL_POSTS
* __Type__ __:__ variable d'affichage
* __Utilisable dans__ __:__ [`index_body`](../tpl/index_body.md#readme), [`mod_statistics`](../tpl/mod_statistics.md#readme), [`overall_footer_begin`](../tpl/overall_footer_begin.md#readme)
* __Utilisation__ __:__

```smarty
{TOTAL_POSTS}
```

## Description[*](https://fa-tvars.appspot.com/var/TOTAL_POSTS)
Chaîne de texte indiquant le nombre total de message que les membres ont postés. Le nombre de message est intégré au texte.

* __Exemple de remplacement français :__ 

```html
Nos membres ont posté un total de <strong>2</strong> messages
```

* __Exemple de code pour ne conserver que le chiffre :__ 

```html
<span id=tp>{TOTAL_POSTS}</span>
<script> $('#tp').text($('#tp').text().match(/[0-9]+/)) </script>
```

## Utilisations dans les templates

### Version phpBB3
* __[`index_body`](../tpl/index_body.md#readme)__ __:__ lignes [`82`](../src/prosilver/index_body.tpl#L82)
* __[`mod_statistics`](../tpl/mod_statistics.md#readme)__ __:__ lignes [`6`](../src/prosilver/mod_statistics.tpl#L6)

### Version phpBB2
* __[`index_body`](../tpl/index_body.md#readme)__ __:__ lignes [`145`](../src/subsilver/index_body.tpl#L145)
* __[`mod_statistics`](../tpl/mod_statistics.md#readme)__ __:__ lignes [`9`](../src/subsilver/mod_statistics.tpl#L9)

### Version ModernBB
* __[`mod_statistics`](../tpl/mod_statistics.md#readme)__ __:__ lignes [`6`](../src/modernbb/mod_statistics.tpl#L6)
* __[`overall_footer_begin`](../tpl/overall_footer_begin.md#readme)__ __:__ lignes [`41`](../src/modernbb/overall_footer_begin.tpl#L41)

### Version PunBB
* __[`index_body`](../tpl/index_body.md#readme)__ __:__ lignes [`66`](../src/punbb/index_body.tpl#L66)
* __[`mod_statistics`](../tpl/mod_statistics.md#readme)__ __:__ lignes [`5`](../src/punbb/mod_statistics.tpl#L5)

### Version Invision
* __[`index_body`](../tpl/index_body.md#readme)__ __:__ lignes [`130`](../src/invision/index_body.tpl#L130)
* __[`mod_statistics`](../tpl/mod_statistics.md#readme)__ __:__ lignes [`4`](../src/invision/mod_statistics.tpl#L4)

