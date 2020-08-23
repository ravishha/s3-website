module "static-website" {
  source  = "git::https://github.com/ravishha/aws-s3-static-website-module.git"

  region            = var.region
  app               = var.app
  stage             = var.stage

  artifact_dir      = var.artifact_dir
  index_page        = var.index_page
  error_page        = var.error_page
  enable_versioning = var.enable_versioning

  cert_arn          = var.cert_arn
  validation_method	=	var.validation_method

  domain            = var.domain
  cname             = var.cname
}
