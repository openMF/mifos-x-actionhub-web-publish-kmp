# mifos-x-actionhub-web-publish-kmp

GitHub Actions composite actions for publishing Compose Multiplatform web apps (Kotlin/JS, Wasm). Maintained by [Mifos Initiative](https://github.com/openMF).

## Distribution targets

| Target | Location | Tier | Since |
|---|---|---|---|
| GitHub Pages | Root `action.yml` | Tier-1 (default) | v1.0.0 |
| **Cloudflare Pages** | [`cloudflare-pages/`](cloudflare-pages/) | Tier-2 | v2.0.0 |
| **Netlify** | [`netlify/`](netlify/) | Tier-2 | v2.0.0 |
| **Vercel** | [`vercel/`](vercel/) | Tier-2 | v2.0.0 |

## Usage

### Tier-1: GitHub Pages (root action, unchanged from v1.x)

```yaml
- uses: openMF/mifos-x-actionhub-web-publish-kmp@v2.0.0
  with:
    web_package_name: cmp-web
```

### Tier-2: pick one provider

See each sub-action's `README.md`:

- [`cloudflare-pages/README.md`](cloudflare-pages/README.md)
- [`netlify/README.md`](netlify/README.md)
- [`vercel/README.md`](vercel/README.md)

## Versioning

- `v1.x` — single Tier-1 target (GH Pages). Last release: `v1.0.6`.
- `v2.0.0` — adds 3 Tier-2 sub-actions. Root action behavior preserved.

## Changelog

See [`CHANGELOG.md`](CHANGELOG.md).

## License

Apache 2.0.
