timeout := "300s"

# Default command - list available commands
default:
    @just --list

# Create a new Kind cluster
cluster-create:
    kind create cluster --name homelab-cluster --config kind-cluster.yaml
    sleep 10
    kubectl get nodes

# Destory the Kind cluster  
cluster-destroy:
    kind delete cluster --name homelab-cluster
