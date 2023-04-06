
# Upload S3 Artifact
> Upload an artifact to S3


## Inputs
| Name | Description | Default | Required | 
| ---- | ----------- | ------- | -------- |
| `path` | S3 path |  | `false` |
| `context` | Context directory | . | `false` |
| `bucket` | S3 bucket | `nd` | `true` |
| `aws_access_key_id` | AWS Access Key ID | `nd` | `true` |
| `source` | Source files/directoreis | `nd` | `true` |
| `filename` | filename of the zip (NO EXTENSION) | `nd` | `false` |
| `aws_region` | S3 region | `nd` | `true` |
| `aws_secret_access_key` | AWS Secret Access Key | `nd` | `true` |



## Outputs 
| Name | Description |
| ---- | ----------- |
| `filename` | Name of the uploaded zip file |
| `s3_url` | S3 Url |

        