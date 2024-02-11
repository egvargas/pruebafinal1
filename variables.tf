variable "aws_region" {
  description = "La región de AWS donde se desplegará la infraestructura"
  default     = "us-east-2"
}

variable "vpc_cidr_block" {
  description = "Bloque CIDR para la VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "Bloque CIDR para la subred"
  default     = "10.0.1.0/24"
}
