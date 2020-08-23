output "cloudfront_endpoint" {
  description = "The cloudfront endpoint URL pointing to the static website in s3 bucket"
  value = module.static-website.cloudfront_endpoint
}

output "s3_bucket" {
  description = "The s3 bucket name that is being used to serve the pages as static website"
  value = module.static-website.s3_bucket
}

output "s3_bucket_endpoint" {
  description = "The s3 bucket endpoint that is serving the static webpages"
  value = module.static-website.s3_bucket_endpoint
}

output "aws_route53_record" {
  description = "The route53 record that is serving the static webpages through the publicly hosted for specific domain name (i.e., in this case fortiusits.com)"
  value = module.static-website.aws_route53_record
}
