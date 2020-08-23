
variable region {
	default	=	"eu-west-2"
}

variable app {
	default	=	"elsvier"
}

variable stage {
	default	=	"development"
}

variable artifact_dir {
	default =	"./src"
}

variable index_page {
	default	=	"index.html"
}

variable error_page {
	default	=	"error.html"
}

variable enable_versioning {
	default	 =	true
}

variable cert_arn {
	default	=	""
}

variable domain {
	default =	"EXAMPLE.COM"
}

variable cname {
	default	=	"s3-static"
}

variable validation_method {
	default	=	"EMAIL"
}
