provider "aws"{
    region = "ap-southeast-1"
    access_key ="AKIA2SACZ4LTHDYOXKTU"
    secret_key="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"
}

resource "aws_instance" "ec2_instance"{
    ami="ami-0ed99df77a82560e6"
    instance_type ="t2.micro"
    }

output "Public-IP" {
  value = aws_instance.ec2_instance.public_ip
}
