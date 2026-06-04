# Changelog

## v2.0.0 — Tier-2 web sub-actions (additive)

### Added

- **`cloudflare-pages/`** — Composite sub-action wrapping `wrangler pages deploy` via `cloudflare/wrangler-action@v3`.
- **`netlify/`** — Composite sub-action installing `netlify-cli@17` and running `netlify deploy --prod`.
- **`vercel/`** — Composite sub-action installing `vercel@34` and running `vercel pull → vercel build → vercel deploy --prebuilt --prod`.
- **`_shared/check-dist.sh`** — Shared pre-flight validator for the `dist_dir` input.
- Per-sub-action `README.md` documenting inputs / runner requirements / sample usage.

### Preserved (no breaking change)

- **Root `action.yml`** — Tier-1 GitHub Pages deploy behavior is byte-for-byte preserved. Every existing consumer of `openMF/mifos-x-actionhub-web-publish-kmp@v1.x` continues to work unchanged.

### Migration

No migration required for existing consumers. To opt into a Tier-2 target, add a new job that consumes the corresponding sub-action — see each sub-action's `README.md` for sample YAML.

### Refs

- Epic: `openMF/kmp-project-template` fastlane-modernization sub-plan 13 (AC59, AC60)
- Companion repo: `openMF/mifos-x-actionhub-publish-desktop-app-kmp@v2.0.0` (desktop Tier-2 expansion)
- Registry update: `openMF/mifos-x-actionhub@v1.0.14` `PLATFORM_REGISTRY.yaml` rows for `web/<target>`
