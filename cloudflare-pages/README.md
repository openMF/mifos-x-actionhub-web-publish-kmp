# cloudflare-pages

Composite sub-action wrapping `wrangler pages deploy`. Part of `openMF/mifos-x-actionhub-web-publish-kmp@v2.0.0`.

## Usage

```yaml
- uses: openMF/mifos-x-actionhub-web-publish-kmp/cloudflare-pages@v2.0.0
  with:
    dist_dir: ./cmp-web/build/dist/wasmJs/productionExecutable
    cloudflare_pages_api_token: ${{ secrets.CLOUDFLARE_PAGES_API_TOKEN }}
    cloudflare_account_id: ${{ secrets.CLOUDFLARE_ACCOUNT_ID }}
    project_name: ${{ vars.CF_PAGES_PROJECT_NAME }}
    branch: main
```

## Inputs

| Name | Required | Default | Description |
|---|---|---|---|
| `dist_dir` | yes | — | Path to the built web bundle |
| `cloudflare_pages_api_token` | yes | — | CF API token with Pages:Edit |
| `cloudflare_account_id` | yes | — | CF account ID |
| `project_name` | yes | — | CF Pages project name |
| `branch` | no | `main` | Deployment branch label |

## Runner

`ubuntu-latest`.
