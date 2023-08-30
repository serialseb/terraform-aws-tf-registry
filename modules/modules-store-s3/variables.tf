variable "name_prefix" {
  type        = string
  default     = "TerraformRegistry"
  description = "A name to use as the prefix for the created API Gateway REST API, DynamoDB tables, etc"
}