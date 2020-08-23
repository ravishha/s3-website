## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| app | Application name | `string` | `"elsvier"` | no |
| artifact\_dir | Host directory containng your website files | `string` | `"./src"` | no |
| cert\_arn | ARN of the SSL certificate to use for the Cloudfront Distribution. If no value is provided, new certificate will be created automatically in us-east-1 region | `string` | `""` | no |
| cname | CNAME Record to create | `string` | `"s3-static-website"` | no |
| domain | Root domain name (i.e., example.com) | `string` | `"EXAMPLE.COM"` | no |
| enable\_versioning | n/a | `bool` | `true` | no |
| error\_page | Path to point your error page | `string` | `"error.html"` | no |
| index\_page | Path to point your index page | `string` | `"index.html"` | no |
| region | AWS Deployed Region (i.e. eu-west-2) | `string` | `"eu-west-2"` | no |
| stage | Deployed stage (i.e., dev, staging, prod) | `string` | `"development"` | no |
| validation\_method | The certificate validation method to use - default is EMAIL | `string` | `"EMAIL"` | no |

## Outputs

| Name | Description |
|------|-------------|
| aws\_route53\_record | The route53 record that is serving the static webpages through the publicly hosted for specific domain name (i.e., in this case fortiusits.com) |
| cloudfront\_endpoint | The cloudfront endpoint URL pointing to the static website in s3 bucket |
| s3\_bucket | The s3 bucket name that is being used to serve the pages as static website |
| s3\_bucket\_endpoint | The s3 bucket endpoint that is serving the static webpages |

