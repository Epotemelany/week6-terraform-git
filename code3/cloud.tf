resource "aws_lightsail_instance" "custom" {
  name              = "week5-server"
  availability_zone = "us-east-2S"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This is my first terraform code i am proud of me</h1>' | sudo tee /var/www/html/index.html"
}


