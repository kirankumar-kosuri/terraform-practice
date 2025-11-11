variable "instances" {
  default = [ "mongodb","redis","mysql","rabbitmq" ]
  # default = {
  #   mongodb = "t3.micro"
  #   redis = "t3.micro"
  #   mysql = "t3.small"
  # }
}

variable "zone_id" {
  default = "Z0312282309EM1L44RY5A"
}

variable "domain_name" {
  default = "daws86s.blog"
}