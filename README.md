# cofiswarm-mode-router

Mode plugin service (router) — HTTP execute endpoint for `cofiswarm-dispatch`.

- SDK: [cofiswarm-mode-sdk](../cofiswarm-mode-sdk)
- Legacy C++: `legacy/cpp/`
- Config gate: `dispatch_url` + `slot_manager_url` in `test/standalone/etc/cofiswarm/mode-router/mode-router.yaml`

## Run

```bash
make build
./bin/cofiswarm-mode-router -config test/standalone/etc/cofiswarm/mode-router/mode-router.yaml
```

Default listen: `:8024`
