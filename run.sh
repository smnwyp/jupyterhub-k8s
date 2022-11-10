#!/usr/bin/env bash

helm upgrade --cleanup-on-fail \
  --install jupyterhub-1 jupyterhub/jupyterhub \
  --namespace jupyterhub \
  --create-namespace \
  --version=1.0.0 \
  --values config.yaml
