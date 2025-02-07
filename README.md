# LGTM-stack-monitoring
The LGTM Stack (Loki for logs, Grafana for visualization, Tempo for traces, and Mimir for metrics)

## How to Use `just`

`just` is a command runner that helps you run commands defined in a `Justfile`. 

Below are some common commands you can use with the `Justfile` in this project.

## How to Create a Cluster

To create a new Kind cluster using the `Justfile`, run the following command:

```sh
just cluster-create
```

To destroy the Kind cluster, run the following command:

```sh
just cluster-destroy
```