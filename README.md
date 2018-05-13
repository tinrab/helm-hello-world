# Helm: Hello World

Build for development:

```
$ dep ensure
$ docker build -t local/hello-world .
```

Deploy:

```
$ helm install --name hello-world .\chart\
```
