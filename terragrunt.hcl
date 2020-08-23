remote_state {
  backend = "s3"
  config = {
    bucket         = "${(get_env("TF_VAR_ENVIRONMENT", "dev"))}.tfstate"
    key            = "state-files/${get_env("TF_VAR_ENVIRONMENT", "dev")}.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "tflocks"
  }
}
