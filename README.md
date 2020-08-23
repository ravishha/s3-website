# README
This git repo is designed to call the terraform module git::https://github.com/ravishha/aws-s3-static-website-module.git to build a s3 based static website in dev, staging and prod environments all from one location to the keep the code DRY (Don't Repeast Yourselves).

Please use the below order in your CICD tool to build this using a pipeline.

Dev Init:

    TF_VAR_ENVIRONMENT=dev terragrunt init -var-files=dev.tfvars

Dev Validate:

    TF_VAR_ENVIRONMENT=dev terragrunt fmt -var-files=dev.tfvars

    TF_VAR_ENVIRONMENT=dev terragrunt validate -var-files=dev.tfvars

Dev Plan:

    TF_VAR_ENVIRONMENT=dev terragrunt plan -var-files=dev.tfvars

Dev Apply:

    TF_VAR_ENVIRONMENT=dev terragrunt apply -var-files=dev.tfvars


Staging Init:

    TF_VAR_ENVIRONMENT=staging terragrunt init -var-files=staging.tfvars

Staging Validate:

    TF_VAR_ENVIRONMENT=staging terragrunt fmt -var-files=staging.tfvars

    TF_VAR_ENVIRONMENT=staging terragrunt validate -var-files=staging.tfvars

Staging Plan:

    TF_VAR_ENVIRONMENT=staging terragrunt plan -var-files=staging.tfvars

Staging Apply:

    TF_VAR_ENVIRONMENT=staging terragrunt apply -var-files=staging.tfvars

Prod Init:

    TF_VAR_ENVIRONMENT=prod terragrunt init -var-files=prod.tfvars

Prod Validate:

    TF_VAR_ENVIRONMENT=prod terragrunt fmt -var-files=prod.tfvars

    TF_VAR_ENVIRONMENT=prod terragrunt validate -var-files=prod.tfvars

Prod Plan:

    TF_VAR_ENVIRONMENT=prod terragrunt plan -var-files=prod.tfvars

Prod Apply:

    TF_VAR_ENVIRONMENT=prod terragrunt apply -var-files=prod.tfvars

## Requirements

The following applications are required to run this pipeline.
	1. AWS cli.
	2. Terraform Version >= 0.12.0.
	3. Terragrunt Version >= 0.21.6.

## Providers
	
	provider.aws: version = "~> 3.3"


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| app | Application name | `string` | `"elsvier"` | yes |
| artifact\_dir | Host directory containng your website files | `string` | `"./src"` | yes |
| cert\_arn | ARN of the SSL certificate to use for the Cloudfront Distribution. If no value is provided, new certificate will be created automatically in us-east-1 region | `string` | `""` | yes |
| cname | CNAME Record to create | `string` | `"s3-static-website"` | yes |
| domain | Root domain name (i.e., example.com) | `string` | `"EXAMPLE.COM"` | yes |
| enable\_versioning | Enable version for the bucket objects (i.e., default is true) | `bool` | `true` | yes |
| error\_page | Path to point your error page | `string` | `"error.html"` | yes |
| index\_page | Path to point your index page | `string` | `"index.html"` | yes |
| region | AWS Deployed Region (i.e. eu-west-2) | `string` | `"eu-west-2"` | yes |
| stage | Deployed stage (i.e., dev, staging, prod) | `string` | `"development"` | yes |
| validation\_method | The certificate validation method to use - default is EMAIL | `string` | `"EMAIL"` | yes |

## Outputs

| Name | Description |
|------|-------------|
| aws\_route53\_record | The route53 record that is serving the static webpages through the publicly hosted for specific domain name (i.e., in this case fortiusits.com) |
| cloudfront\_endpoint | The cloudfront endpoint URL pointing to the static website in s3 bucket |
| s3\_bucket | The s3 bucket name that is being used to serve the pages as static website |
| s3\_bucket\_endpoint | The s3 bucket endpoint that is serving the static webpages |

