# deck-issue-144-repro

Repro for https://github.com/hbagdi/deck/issues/144

# Steps

```shell
./docker-build.sh

docker-compose up -d
```

```shell
curl -i -X POST \
  --url http://localhost:8001/plugins \
  --header 'content-type: application/json' \
  --data '{"name": "array-config", "config": {"array":[{"name":"Test","versions":[{"version":1,"enabled":false},{"version":2,"enabled":true},{"version":3,"enabled":true}]}]}}'
```

```shell
deck dump
```

Observe `array-config` plugin config output in `kong.yaml`

```shell
deck sync
```

Observe 404 Bad Request during sync