# Let's play

To start:
1. Port forward `kubectl -n color-race-game port-forward services/color-app-service 80:80 --address 0.0.0.0`{{exec}}
2. [click here]({{TRAFFIC_HOST1_80}})

## Update and reload

Update your resources and make sure to reload!

```
^C
kubectl -n color-race-game rollout restart deployment color-app &&
kubectl -n color-race-game wait pod -l app=color-app --for=condition=Ready &&
kubectl -n color-race-game port-forward services/color-app-service 80:80 --address 0.0.0.0
```
