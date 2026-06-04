# netlify

Composite sub-action wrapping `netlify deploy --prod`. Part of `openMF/mifos-x-actionhub-web-publish-kmp@v2.0.0`.

## Usage

```yaml
- uses: openMF/mifos-x-actionhub-web-publish-kmp/netlify@v2.0.0
  with:
    dist_dir: ./cmp-web/build/dist/wasmJs/productionExecutable
    netlify_auth_token: ${{ secrets.NETLIFY_AUTH_TOKEN }}
    netlify_site_id: ${{ secrets.NETLIFY_SITE_ID }}
```

## Inputs

| Name | Required | Description |
|---|---|---|
| `dist_dir` | yes | Path to the built web bundle |
| `netlify_auth_token` | yes | Netlify personal access token |
| `netlify_site_id` | yes | Netlify site ID |

## Runner

`ubuntu-latest`.
