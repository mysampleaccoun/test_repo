resource  "aws_instance" "newec2" {
    ami = local.ami_id
    instance_type = local.instance_type
    subnet_id = local.subnet_id
}
    resource "aws_iam_role" "test_role" {
  name = "test_role"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    tag-key = "tag-value"
  }
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
