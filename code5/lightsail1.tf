resource "aws_lightsail_instance" "custom" {
  name              = "dev-server"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_18_04"
  bundle_id         = "medium_1_0"

  user_data = "sudo apt-getupdate sudo apt-get install -y apache2 && sudo systemctl enable apache2  && sudo systemctl start apache2 && echo '<h1>This is deployed by melany</h1>' | sudo tee /var/www/html/index.html"

}
    