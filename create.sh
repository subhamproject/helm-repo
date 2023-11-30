#!/bin/bash

helm install nginx --namespace nginx ../ --create-namespace --wait --atomic
helm install nginx --namespace nginx <foldername> --create-namespace --wait --atomic

helm install --set user.name='student',user.password='passw0rd' stable/mysql

helm upgrade --install nginx ../ --set replicaCount=2 --reuse-values
