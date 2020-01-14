# show nodes (optional)
$ kubectl get nodes

# create namespace
$ kubectl create -f ~/Projects/KubernetesJenkins/namespace.yml

# show namespaces (optional)
$ kubectl get namespaces --show-labels

# create pod
$ kubectl create -f pod.yml

# show pods of namespace
$ kubectl get pods --namespace development

# show pod informations (optional)
$ kubectl describe pod jenkins.localhost --namespace development



# show ports in use (optional)
$ lsof -i -P | grep -i "listen"

# create port-forward to specific namespace
$ kubectl port-forward jenkins.localhost 8080:8080 --namespace=development

# open browser (new terminal)
$ open http://localhost:8080


2e88329ea202
# show key for Jenkins activation
$ kubectl exec jenkins.localhost --namespace development -- cat /var/jenkins_home/secrets/initialAdminPassword

# show logs of pod
$ kubectl logs -f jenkins.localhost --namespace development

# delete service
$ kubectl delete service jenkins-service --namespace development

# list services (optional)
$ kubectl get services --namespace development

# delete pod
$ kubectl delete pod jenkins.example.com --force --namespace development

# list pods (optional)
$ kubectl get pods --namespace development

# delete namespace
$ kubectl delete namespaces development

# list namespaces (optional)
$ kubectl get namespaces