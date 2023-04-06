
# Upload S3 Artifact
> Upload an artifact to S3


## Inputs
| Name | Description | Default | Required | 
| ---- | ----------- | ------- | -------- |
| `path` | S3 path |  | `false` |
| `source` | Source files/directoreis | `nd` | `true` |
| `filename` | filename of the zip (NO EXTENSION) | `nd` | `false` |
| `aws_access_key_id` | AWS Access Key ID | `nd` | `true` |
| `bucket` | S3 bucket | `nd` | `true` |
| `aws_region` | S3 region | `nd` | `true` |
| `aws_secret_access_key` | AWS Secret Access Key | `nd` | `true` |
| `context` | Context directory | . | `false` |



## Outputs 
| Name | Description |
| ---- | ----------- |
| `s3_url` | S3 Url |
| `filename` | Name of the uploaded zip file |

        