## Con python
```
python3

>>>importos
>>
>>>os.execl("/bin/bash","bash","-p")
export PATH=/bin
```

## Salir de pyjail

```bash
getattr(getattr(globals()['**builtins**'], '**im'+'port**')('o'+'s'), 'sys'+'tem')('bash')
```
