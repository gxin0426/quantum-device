## quantum device plugin
find a quantum device for k8s
## complie

```shell
make build
```

## deploy

```shell
make deploy
```

## test

create  `/etc/quantum-device` folder and create a file `tgqs.net/quantum-device` in it

```shell
$ touch quantum001
```

create  label on node

```shell
$ kubectl label nodes quantum-device=enable
```

```shell
kubectl apply -f e2e/pod-with-quantum.yaml
```

Then check the pod scheduling or look at the pod logs to check