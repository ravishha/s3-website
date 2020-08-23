variable region {
        description = "AWS Deployed Region (i.e. eu-west-2)"
	default	=	"eu-west-2"
}

variable app {
        description = "Application name"
	default	=	"elsvier"
}

variable stage {
        description = "Deployed stage (i.e., dev, staging, prod)"
	default	=	"development"
}

variable artifact_dir {
        description = "Host directory containng your website files"
	default =	"./src"
}

variable index_page {
        description = "Path to point your index page"
	default	=	"index.html"
}

variable error_page {
        description = "Path to point your error page"
	default	=	"error.html"
}

variable enable_versioning {
        description = "Enable version for the bucket objects (i.e., default is true)"
	default	 =	true
}

variable cert_arn {
        description = "ARN of the SSL certificate to use for the Cloudfront Distribution. If no value is provided, new certificate will be created automatically in us-east-1 region"
	default	=	""
}

variable domain {
        description = "Root domain name (i.e., example.com)"
	default =	"EXAMPLE.COM"
}

variable cname {
        description = "CNAME Record to create"
	default	=	"s3-static-website"
}

variable validation_method {
        description = "The certificate validation method to use - default is EMAIL"
	default	=	"EMAIL"
}
