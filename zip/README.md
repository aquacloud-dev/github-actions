# ZIP Action
```yaml
steps:
    -
        name: Zip Files
        uses: aquacloud-dev/zip-action@v1
        with:
            files: .next,public
            output: dist.zip
```


<!-- action-docs-description -->
## Description

Zip Folder/Files


<!-- action-docs-description -->

<!-- action-docs-inputs -->
## Inputs

| parameter | description | required | default |
| - | - | - | - |
| files | Files to zip | `true` |  |
| output | Zip filename | `true` |  |
| context | Working Directory | `false` | . |



<!-- action-docs-inputs -->

<!-- action-docs-outputs -->
## Outputs

| parameter | description |
| - | - |
| zip_file | Zip file (does not includes the extension) |



<!-- action-docs-outputs -->

<!-- action-docs-runs -->
## Runs

This action is an `composite` action.


<!-- action-docs-runs -->
