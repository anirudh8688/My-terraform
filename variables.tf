variable "sg_name" {
  type = string
}
variable "ingress_from_port" {
  type = string
}
variable "ingress_to_port" {
  type = string
}
variable "ingress_protocol" {
  type = string
}
variable "egress_from_port" {
  type = string
}
variable "egress_to_port" {
  type = string
}
variable "egress_protocol" {
  type = string
}
variable "ami" {
  type = string
}
variable "vpc_security_group_ids" {
  type = list(string)
}
variable "instance_type" {
  type = string
}
