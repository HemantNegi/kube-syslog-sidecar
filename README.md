# kube-syslog-sidecar

Fork of [aknuds1/docker-syslog-ng-sidecar](https://github.com/aknuds1/docker-syslog-ng-sidecar) to build cross-platform
docker images (arm v7, arm v8 and amd64)

Docker hub - https://hub.docker.com/repository/docker/hemantnegi/syslog-sidecar

Pull from dockerhub
```bash
docker pull hemantnegi/syslog-sidecar:latest
```


Dockerfile for syslog-ng to run in a sidecar container logging to stdout. The purpose of this
Dockerfile is to build a Docker image that runs in a sidecar container, forwarding logs
from the main container to stdout so Kubernetes can pick up the logs.

One use of this is to make `haproxy` container friendly, by logging to stdout.


ref: https://www.docker.com/blog/multi-arch-build-and-images-the-simple-way/

To building and release a new version execute
```
make build
```
