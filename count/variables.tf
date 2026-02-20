variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql","rabbitmq","catalogue","cart","payment","shipping","user","frontend"]
}
variable "zone_id" {
    type = string
    default = "Z03105852W3XURFMIPYMJ" 
}
variable "domine_name" {
    type = string
    default = "aicloudera.in"
  
}