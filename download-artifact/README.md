# Download S3 Artifact
```yaml
- uses: aquacloud-dev/download-artifact-action@v1.1
  with:
    aws_access_key_id: ${{ secrets.AWS_ACCESS_KEY_ID }}
    aws_secret_access_key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    aws_region: ${{ secrets.AWS_REGION }}
    bucket: ${{ secrets.S3_BUCKET_NAME }}
    path: /${{ github.sha }} # path on s3
    filename: dist # without zip extension!
    extension: zip
    output: . # unzip output folder
    context: . # where to download the zip
```

## Steps
- **Download artifact** - Downloads the `artifact zip` to the `context` path. (path => `{context}/${filename}.zip`)
- **Unzip artifact** - Unzip the downloaded artifact to `output` (path => `{context}/{output}`)

> Pseudo bash code below
```sh
	download --from s3://{bucket}/{path}/{filename}.zip --to {context}/{filename}.zip
	cd {context}
	unzip {filename}.zip -d {output}
```
