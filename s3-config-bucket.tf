# Legacy file used to create a bucket - No longer using it

# resource "aws_s3_bucket" "s3_config_bucket" {
#   bucket = "devopsdemo-${var.env_name}"
#   region = "us-east-1"

#   tags = {

#   }
#      tags = merge(
#        local.tags,
#        {
#          Name        = "devopsdemo-${var.env_name}"
#        Environment = "${var.env_name}"
#        }
#      )
# }