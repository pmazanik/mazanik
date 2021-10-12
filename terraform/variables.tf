variable "region" {
  description = "Region name"
  default     = "eu-central-1"
  type        = string
}

variable "instancetype" {
  description = "instance type"
  default     = "t3.micro"
  type        = string
}

variable "testing" {
  type = bool
}
