
# Upload S3 Artifact
> Upload an artifact to S3

## Inputs 

| Name | Description | Default | Required | 
| ---- | ----------- | ------- | -------- |
| `aws_access_key_id` | AWS Access Key ID | `nd` | `true` |
| `aws_region` | S3 region | `nd` | `true` |
| `aws_secret_access_key` | AWS Secret Access Key | `nd` | `true` |
| `bucket` | S3 bucket | `nd` | `true` |
| `context` | Context directory | . | `false` |
| `filename` | filename of the zip (NO EXTENSION) | `nd` | `false` |
| `path` | S3 path |  | `false` |
| `source` | Source files/directoreis | `nd` | `true` |


## Outputs 

| Name | Description |
| ---- | ----------- |
| `filename` | Name of the uploaded zip file |
| `s3_url` | S3 Url |

        