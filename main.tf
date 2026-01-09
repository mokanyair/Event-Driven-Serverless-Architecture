module "s3" {
  source       = "./modules/s3"
  project_name = var.project_name
}

module "sns" {
  source       = "./modules/sns"
  project_name = var.project_name
}

module "lambda" {
  source           = "./modules/lambda"
  project_name     = var.project_name
  raw_bucket_arn   = module.s3.raw_bucket_arn
  processed_bucket = module.s3.processed_bucket_name
  sns_topic_arn    = module.sns.topic_arn
}
