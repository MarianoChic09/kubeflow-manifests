sudo snap install microk8s --classic
wsl
microk8s enable storage

microk8s kubectl get pods -n cert-manager
microk8s kubectl get pods -n istio-system
microk8s kubectl get pods -n auth
microk8s kubectl get pods -n knative-eventing
microk8s kubectl get pods -n knative-serving
microk8s kubectl get pods -n kubeflow
microk8s kubectl get pods -n kubeflow-user-example-com

microk8s kubectl port-forward svc/istio-ingressgateway -n istio-system 8080:80
