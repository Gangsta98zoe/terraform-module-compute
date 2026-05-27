# Módulo: compute

Despliega una instancia EC2 con Apache instalado y su Security Group asociado.

## Recursos creados

| Recurso | Descripción |
|---|---|
| `aws_security_group` | Grupo de seguridad con reglas SSH (22) y HTTP (80) |
| `aws_instance` | Instancia EC2 Amazon Linux 2 con Apache instalado |

## Uso

```hcl
module "compute" {
  source        = "github.com/Gangsta98zoe/terraform-module-compute?ref=v0.1.0"
  vpc_id        = module.networking.vpc_id
  subnet_id     = module.networking.public_subnet_id
  instance_type = "t2.micro"
  environment   = "dev"
  name_prefix   = "prueba2"
}
```

## Versiones

| Versión | Descripción |
|---|---|
| v0.1.0 | Módulo inicial: EC2 + Security Group con Apache |

## Justificación SemVer
- v0.1.0: primera versión funcional del módulo.
- Nuevas variables/outputs → incrementa MINOR.
- Corrección de bug → incrementa PATCH.

---
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.100.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aws_instance.web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_ami"></a> [ami](#input\_ami) | AMI para la instancia EC2 (Amazon Linux 2) | `string` | `"ami-0c02fb55956c7d316"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Entorno de despliegue | `string` | `"dev"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Tipo de instancia EC2 | `string` | `"t2.micro"` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Prefijo para nombrar los recursos | `string` | `"prueba2"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | ID de la subred donde se lanza la instancia EC2 | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID de la VPC donde se despliega el compute | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | ID de la instancia EC2 |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | IP pública de la instancia EC2 |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | ID del Security Group |
