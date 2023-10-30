# Let's play

## (1) Start with a port forward

Klik here:  
`kubectl -n color-race-game port-forward services/color-app-service 80:80 --address 0.0.0.0`{{exec}}

> You can cancel the port forward at any time.

## (2) Let's go!

Visit the page to start the game: [Color Game Race!]({{TRAFFIC_HOST1_80}})

> The timer will start as soo as the browser page loads.

## (3) Update and reload

Update your resources and make sure to reload!

```
kubectl -n color-race-game rollout restart deployment color-app &&
kubectl -n color-race-game wait pod -l app=color-app --for=condition=Ready &&
kubectl -n color-race-game port-forward services/color-app-service 80:80 --address 0.0.0.0
```{{exec}}
