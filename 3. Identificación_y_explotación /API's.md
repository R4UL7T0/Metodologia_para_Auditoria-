## Con token:

```bash
curl -s -X POST / GET http://<IP>:PORT/API

curl -s -X POST / GET http://IP:PORT/api -H 'Content-Type: application/json' -d '{"Token": ""}'
```

## Sin token:

```bash
curl -s “http://<IP>:PORT/API” \

-H “Cookie: session=<TOKEN_JWT_SESSION>” | grep -E ‘csrf|token|_token’ -i
```
