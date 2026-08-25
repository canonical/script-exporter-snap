# Script Exporter Snap

[![Pull Request](https://github.com/canonical/script-exporter-snap/actions/workflows/pull-request.yaml/badge.svg)](https://github.com/canonical/script-exporter-snap/actions/workflows/pull-request.yaml)
[![Release Snap](https://github.com/canonical/script-exporter-snap/actions/workflows/release.yaml/badge.svg)](https://github.com/canonical/script-exporter-snap/actions/workflows/release.yaml)

A snap package for [Script Exporter](https://github.com/ricoberger/script_exporter).

## Overview

Script exporter allows to execute scripts and collect metrics through Prometheus from the output or the exit status.

## Installation

```bash
sudo snap install script-exporter
```

## Usage

### Running as a Service (Daemon)

The snap includes a daemon service that is disabled by default. To enable and start it:

```bash
sudo snap start --enable prometheus-script-exporter
```

To stop the service:

```bash
sudo snap stop script-exporter
```

## Configuration

Once installed, a default configuration file will be created at `$SNAP_DATA/etc/script-exporter.yaml`. Before starting the exporter, make sure to update the configuration to suit your needs, consulting the [official documentation](https://github.com/ricoberger/script_exporter#usage-and-configuration).

To use an external configuration file from the host filesystem instead:

```bash
# Connect the system-files plug
sudo snap connect script-exporter:etc-script-exporter

# Create and configure the file
sudo nano /etc/script-exporter.yaml

# Restart the service
sudo snap restart script-exporter
```

## Development

This snap follows the [Canonical Observability snaps blueprint](https://github.com/canonical/observability/tree/main/blueprints/snaps).

### Prerequisites

- `snapcraft`
- `just`
- `yq`
- `gh` (GitHub CLI)

### Common Commands

```bash
# Build the snap locally
just pack

# Run tests
just test

# Update to latest upstream version
just update ricoberger/script_exporter

# Fetch latest centralized files from canonical/observability
just refresh
```

## License

Apache License 2.0
