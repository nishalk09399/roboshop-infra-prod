resource "aws_ssm_parameter" "mongodb_url" {
  name  = "/${var.project_name}/${var.env}/mongodb_url"
  type  = "String"
  # for dev it is like mogodd-dev.nishaldevops.online
  # for prod it is like mogodd-prod.nishaldevops.online

  value = "${var.mongodb_record_name}-${var.env}.${var.zone_name}" #module should have o/p declaration 
}