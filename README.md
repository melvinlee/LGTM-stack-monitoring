# LGTM-stack-monitoring [![Built with Devbox](https://jetpack.io/img/devbox/shield_moon.svg)](https://jetpack.io/devbox/docs/contributor-quickstart/)

The LGTM Stack (Loki for logs, Grafana for visualization, Tempo for traces, and Mimir for metrics)


## Development Setup

### Prerequisites

[Devbox](https://www.jetpack.io/devbox) installed on your system

```bash
curl -fsSL https://get.jetpack.io/devbox | bash
```

### Using Devbox

This project uses Devbox to manage development dependencies. Devbox automatically sets up the following tools:
- `kind`: For managing local Kubernetes clusters
- `just`: Command runner for project tasks

To start using the development environment:

1. Enter the devbox shell:
```bash
devbox shell
```

This will automatically install and configure all required tools.

2. Verify the installation:
```bash
kind --version
just --version
```

3. Exit the devbox shell when you're done:
```bash
exit
```

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
