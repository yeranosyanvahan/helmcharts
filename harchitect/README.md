
# harchitect - Helm Architect

## Overview
`harchitect` is a Helm chart designed to deploy a full-stack application infrastructure, covering everything from applications, databases, messaging systems, storage solutions, DNS configurations, and more. It serves as a comprehensive solution for setting up and managing the architecture of your Kubernetes-based applications.

## Prerequisites
- Kubernetes 1.19+
- Helm 3.0+

## Installation

To install the chart with the release name `my-release`:

```bash
helm install my-release path/to/harchitect
```

## Configuration

The chart can be customized using various parameters by modifying the `values.yaml` file or by specifying configuration options with the `--set` flag during installation.

For example:

```bash
helm install my-release path/to/harchitect --set namespace=default,app.replicaCount=2
```

Refer to the `values.yaml` file for a full list of configurable options.

## Components

This chart includes the following components:

- Application Deployment
- CMS Setup
- Database Configuration
- DNS Configuration
- Harbor Registry
- Ingress Settings
- Longhorn Storage
- Persistent Volumes
- RabbitMQ Messaging System

## Contributing

Contributions to improve `harchitect` are welcome. Please consider submitting a pull request or issue to the project repository.

## License

Specify the license under which the chart is distributed.
