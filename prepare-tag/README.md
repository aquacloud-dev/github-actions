
# Prepare Tag
> Prepare docker tag

## Inputs 

| Name | Description | Default | Required | 
| ---- | ----------- | ------- | -------- |
| `context` | Context directory | . | `false` |
| `image_name` | Image name | ${{ github.event.repository.name }} | `false` |
| `manifest_version` | Manifest version (package.json, pom.xml etc) | `nd` | `true` |
| `registry` | Docker registry | `nd` | `true` |


## Outputs 

| Name | Description |
| ---- | ----------- |
| `manifest_version` | List of maven version |
| `tags` | List of docker tags |
| `version` | List of docker version |

        