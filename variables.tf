variable "vpc_id" {
  description = "ID de la VPC donde se despliega el compute"
  type        = string
}
variable "subnet_id" {
  description = "ID de la subred donde se lanza la instancia EC2"
  type        = string
}
variable "ami" {
  description = "AMI para la instancia EC2 (Amazon Linux 2)"
  type        = string
  default     = "ami-0c02fb55956c7d316"
}
variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"
}
variable "environment" {
  description = "Entorno de despliegue"
  type        = string
  default     = "dev"
}
variable "name_prefix" {
  description = "Prefijo para nombrar los recursos"
  type        = string
  default     = "prueba2"
}
