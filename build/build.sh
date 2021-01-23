#/bin/sh
set -x

CI_COMMIT_TAG=$(git describe --always --tags)

docker build -t linclaus/grafana-operator:latest -f build/package/operator.Dockerfile .
docker build -t linclaus/grafana-converter:latest -f build/package/converter.Dockerfile .