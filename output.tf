output "cloudfront_endpoint" {
  value = module.static-website.cloudfront_endpoint
}

output "s3_bucket" {
  value = module.static-website.s3_bucket
}

output "s3_bucket_endpoint" {
  value = module.static-website.s3_bucket_endpoint
}

output "aws_route53_record" {
  value = module.static-website.aws_route53_record
}
