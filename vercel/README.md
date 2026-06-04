# vercel

Composite sub-action wrapping `vercel deploy --prod`. Part of `openMF/mifos-x-actionhub-web-publish-kmp@v2.0.0`.

## Usage

```yaml
- uses: openMF/mifos-x-actionhub-web-publish-kmp/vercel@v2.0.0
  with:
    dist_dir: ./cmp-web/build/dist/wasmJs/productionExecutable
    vercel_token: ${{ secrets.VERCEL_TOKEN }}
    vercel_org_id: ${{ secrets.VERCEL_ORG_ID }}
    vercel_project_id: ${{ secrets.VERCEL_PROJECT_ID }}
```

## Inputs

| Name | Required | Description |
|---|---|---|
| `dist_dir` | yes | Path to the built web bundle |
| `vercel_token` | yes | Vercel personal access token |
| `vercel_org_id` | yes | Vercel org/team ID |
| `vercel_project_id` | yes | Vercel project ID |

## Runner

`ubuntu-latest`.
