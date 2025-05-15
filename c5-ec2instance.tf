resource "aws_instance" "myec2vm" {
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  #user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id]
  tags = {
    "Name" = "EC2 Demo 2"
  }
  provisioner "remote-exec" {
    #inline = [
    #  "touch /home/ec2-user/terraform-created.txt"
    #]
    script = "${path.module}/scripts/create-file.sh" 


    connection{
       type          = "ssh"
       user          = "ec2-user"
       private_key   = file("${path.module}/private-key/terraform-key.pem")
       host          = self.public_ip

    }

  }
}
