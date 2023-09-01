
# Docker Build
> An action to perform docker build

## Inputs 

| Name | Description | Default | Required | 
| ---- | ----------- | ------- | -------- |
| `build-args` | Build args | `nd` | `false` |
| `cache-from` | where to read the cache from | `nd` | `false` |
| `cache-to` | where to store the cache | `nd` | `false` |
| `context` | Context | . | `false` |
| `labels` | Docker labels | `nd` | `false` |
| `push` | Wether to push the docker image or nto | true | `false` |
| `registry-url` | Registry URL | `nd` | `true` |
| `tags` | Tags to build | `nd` | `true` |


## Outputs 
> No outputs
        