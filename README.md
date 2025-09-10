# Podman and Helm charts for local dev

## Podman

Installation is pretty easy nowadays: [Podman installation](https://podman.io/docs/installation)

## Helm

Also super easy: [Helm installation](https://helm.sh/docs/intro/install/)

## Usage

- Make a `values.local.yaml` file with some overrides for `kind`s we don't need
- Add a `pod.yaml` template
- Add some logic to render `pod` when environment is `local`. `deployment` if not.
- Run `helm template ...` and pipe it to `podman kube play -`
- See `Makefile` for examples
