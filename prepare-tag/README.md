
# Prepare Tag
> Prepare docker tag


## Inputs
| Name | Description | Default | Required | 
| ---- | ----------- | ------- | -------- |
| `image_name` | Image name | ${{ github.event.repository.name }} | `false` |
| `manifest_version` | Manifest version (package.json, pom.xml etc) | `nd` | `true` |
| `registry` | Docker registry | `nd` | `true` |
| `context` | Context directory | . | `false` |



## Outputs 
| Name | Description |
| ---- | ----------- |
| `tags` | List of docker tags |
| `manifest_version` | List of maven version |
| `version` | List of docker version |

        