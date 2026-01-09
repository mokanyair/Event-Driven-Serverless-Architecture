resource "aws_sns_topic" "notifications" {
  name = "${var.project_name}-notifications"
}