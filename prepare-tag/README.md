
# Prepare Tag
> Prepare docker tag


## Inputs
| Name | Description | Default | Required | 
| ---- | ----------- | ------- | -------- |
| `image_name` | Image name | ${{ github.event.repository.name }} | `false` |
| `registry` | Docker registry | `nd` | `true` |
| `context` | Context directory | . | `false` |
| `manifest_version` | Manifest version (package.json, pom.xml etc) | `nd` | `true` |



## Outputs 
| Name | Description |
| ---- | ----------- |
| `manifest_version` | List of maven version |
| `tags` | List of docker tags |
| `version` | List of docker version |

        