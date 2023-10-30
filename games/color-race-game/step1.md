# Let's play

## Start:
1. Port forward
    `kubectl -n color-race-game port-forward services/color-app-service 80:80 --address 0.0.0.0`{{exec}}
2. [Color Game Race!]({{TRAFFIC_HOST1_80}})

> You can cancel the port forward at any time.

## Update and reload

Update your resources and make sure to reload!

```
kubectl -n color-race-game rollout restart deployment color-app &&
kubectl -n color-race-game wait pod -l app=color-app --for=condition=Ready &&
kubectl -n color-race-game port-forward services/color-app-service 80:80 --address 0.0.0.0
```{{exec}}
