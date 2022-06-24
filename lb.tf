
resource "aws_lb" "test" {
  name               = "LB-APPmario2"
  internal           = false
  load_balancer_type = "application"
  ip_address_type = "ipv4"
  security_groups    = [aws_security_group.Allow_all.id]
  subnets            = data.aws_subnet_ids.subnet.ids
 

  enable_deletion_protection = false

  tags = {
    Name  = "AWS_LB"
  Environment = "production"
     }

}
  