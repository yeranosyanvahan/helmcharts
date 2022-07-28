# chartologist
This is a general purpose helm charts for everyday kubernetes manifest tasks.
The main purpose of this chart is to shorten kubernetes manifests for it to fit in one screen.

The modelling is pretty simple:
For each kubernetes resource there is a yaml variant of it.
For example:
```
Deployment:
 name: www-yeranosyanvahan-com
 replicas: 1
 #this will create a service for the deployment
 expose: www-yeranosyanvahan-com
 containers:
  - name: webserver
    image: yeranosyanvahan/yeranosyanvahan.com:latest
    ports:
      - 80: 80
```

## Namespace
```
Namespace:
 name: hello
 create: true
```
## Ingress
```
ingress:
  name: example-com
  tls_secret: tls-example-com
  middlewares:
    - https-only
  hosts:
  - hostname: example.com
    forwardhost: example-com
    forwardport: 80
```

## ExternalSecret
This uses External Secrets Operator For deploying secrets.
```
ExternalSecret:
  name: vault-example
  refreshInterval: "15s"
  secretStoreRef:
   name: vault-secret-ref
   kind: SecretStore
  extract:
    # the target secret that would be created
    target: foo
    # the path to secret in vault
    source: secret/foo
```


The url for this helmchart
https://yeranosyanvahan.github.io/helmcharts <br>
