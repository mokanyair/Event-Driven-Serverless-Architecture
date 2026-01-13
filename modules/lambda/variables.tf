variable "project_name" {
    description = "Name of processed S3 bucket"
    type        = string
}
variable "raw_bucket_arn" {
    type        = string
}
variable "processed_bucket_name" {
    description = "Name of processed S3 bucket"
    type        = string
}
variable "sns_topic_arn" {
    type        = string
}