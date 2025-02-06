timeout := "300s"

# Default command - list available commands
default:
    @just --list

# Create a new Kind cluster
cluster-create:
    kind create cluster --name homelab-cluster --config cluster/kind-cluster.yaml
    sleep 10
    kubectl get nodes

# Destroy the Kind cluster  
cluster-destroy:
    kind delete cluster --name homelab-cluster

# Get Grafana admin credentials
grafana-credentials:
    @echo "Grafana admin username:"
    @kubectl -n monitoring get secret prometheus-grafana -o jsonpath='{.data.admin-user}' | base64 --decode
    @echo "\nGrafana admin password:"
    @kubectl -n monitoring get secret prometheus-grafana -o jsonpath='{.data.admin-password}' | base64 --decode
