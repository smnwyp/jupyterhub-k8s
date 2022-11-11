documentation: https://z2jh.jupyter.org/en/stable/jupyterhub/installation.html

```commandline
$ minikube start
$ minikube tunnel
$ ./run.sh
$ k --namespace jupyterhub get service proxy-public
NAME           TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
proxy-public   LoadBalancer   10.97.124.164   127.0.0.1     80:31320/TCP   5m53s
```

in your browser, go to `127.0.0.1:80`, voila!! try log in with `chloe`

Now, check 
```commandline
k get pod --namespace jupyterhub
NAME                             READY   STATUS    RESTARTS   AGE
continuous-image-puller-s4z9b    1/1     Running   0          12m
hub-576b84dfdb-8f66t             1/1     Running   0          12m
jupyter-chloe                    1/1     Running   0          5m42s
proxy-664d5d74ff-7dhg9           1/1     Running   0          12m
user-scheduler-97cc86b77-ntsml   1/1     Running   0          12m
user-scheduler-97cc86b77-tk9bj   1/1     Running   0          12m
```

in an incognito browser, visit `127.0.0.1:80`, voila!! try log in with `raccoon`, 
and check:
```commandline
$ k get pod --namespace jupyterhub
NAME                             READY   STATUS     RESTARTS   AGE
continuous-image-puller-s4z9b    1/1     Running    0          13m
hub-576b84dfdb-8f66t             1/1     Running    0          13m
jupyter-chloe                    1/1     Running    0          6m36s
jupyter-raccoon                  0/1     Init:0/1   0          3s
proxy-664d5d74ff-7dhg9           1/1     Running    0          13m
user-scheduler-97cc86b77-ntsml   1/1     Running    0          13m
user-scheduler-97cc86b77-tk9bj   1/1     Running    0          13m
```
