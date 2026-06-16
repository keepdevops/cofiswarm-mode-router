# cofiswarm-mode-router

Cofiswarm component: `mode-router`.

- Layout: [REPO-STANDARD-LAYOUT](https://github.com/keepdevops/cofiswarmdev/blob/main/docs/REPO-STANDARD-LAYOUT.md)
- Migration: [MIGRATION-SPRINTS](https://github.com/keepdevops/cofiswarmdev/blob/main/docs/MIGRATION-SPRINTS.md)

## FHS paths

| Path | Purpose |
|------|---------|
| `/etc/cofiswarm/mode-router/` | config |
| `/var/lib/cofiswarm/mode-router/` | state |
| `/var/log/cofiswarm/mode-router/` | logs |

## Test

```bash
./test/scripts/assert-layout.sh mode-router
```
