timeout := "300s"

# Default command - list available commands
default:
    @just --list

# Create a new Kind cluster
create-cluster:
    kind create cluster --name lgtm-cluster

# Destory the Kind cluster  
destroy-cluster:
    kind delete cluster --name lgtm-cluster
