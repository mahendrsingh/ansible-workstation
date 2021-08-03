provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAUQVEH7G3SH4F4TO2"
  secret_key = "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"
}

resource "aws_instance" "ansible_tf" {
      
	ami = "ami-0747bdcabd34c712a"
    instance_type = "t2.micro"
    key_name = "ritesh-ec2"
	security_groups = [ "wizard-SG1" ]
	tags = {
		name = "ansible"
	}
	/*
	provisioner "local-exec" {
		command = "sleep 120; ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook --private-key /home/ms/Documents/ritesh-ec2.pem -i ${aws_instance.ansible_tf.public_ip}, playbook.yaml"
	  
	}
	*/
}
