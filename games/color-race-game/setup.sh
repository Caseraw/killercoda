#!/bin/bash

kubectl apply -f /root/setup.yaml

kubectl -n color-race-game wait pod -l app=color-app --for=condition=Ready

kubectl -n color-race-game port-forward services/color-app-service 80:80 --address 0.0.0.0
