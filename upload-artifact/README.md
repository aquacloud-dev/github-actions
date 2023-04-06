
# Upload S3 Artifact
> Upload an artifact to S3


## Inputs
| Name | Description | Default | Required | 
| ---- | ----------- | ------- | -------- |
| `aws_access_key_id` | AWS Access Key ID | `nd` | `true` |
| `source` | Source files/directoreis | `nd` | `true` |
| `aws_secret_access_key` | AWS Secret Access Key | `nd` | `true` |
| `aws_region` | S3 region | `nd` | `true` |
| `bucket` | S3 bucket | `nd` | `true` |
| `path` | S3 path |  | `false` |
| `context` | Context directory | . | `false` |
| `filename` | filename of the zip (NO EXTENSION) | `nd` | `false` |



## Outputs 
| Name | Description |
| ---- | ----------- |
| `s3_url` | S3 Url |
| `filename` | Name of the uploaded zip file |

        