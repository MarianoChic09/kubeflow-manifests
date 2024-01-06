while ! kustomize build example | microk8s kubectl apply -f -; do echo "Retrying to apply resources"; sleep 10; done
# --validate=false