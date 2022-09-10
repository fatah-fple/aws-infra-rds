variable "PROJECT_NAME" {
  description = "Project Name"
}
variable "DB_INSTANCE_CLASS" {
  description = "RDS DB Instance Type - start small e.g. t3.micro"
}

variable "DB_PARAM_FAMILY" {
  description = "RDS DB Param Group Family - e.g. mysql5.7, mysql8.0"
}

variable "DB_ENGINE" {
  description = "DB Engine - e.g. mysql, or postgres"
}

variable "DB_ENGINE_VERSION" {
  description = "DB Engine Version - e.g. for mysql 5.7.28"
}

variable "DB_DISK_SIZE" {
  description = "DB Initial Disk Size - start small, but not less than 50GB"
}

variable "DB_DISK_SIZE_MAX" {
  description = "DB Disk Max Scaling Size - e.g. 100GB or 500GB?"
}
variable "DB_MASTER_USER" {
  description = "login ID for master user of your DB instance"
}

variable "DB_MASTER_PASSWORD" {
  description = "password for master user of your DB instance"
}

variable "PVT_1a" {
  description = "private subnet 1a id"
}

variable "PVT_1b" { 
  description = "private subnet 1b id"
}

variable "PVT_1c" { 
  description = "private subnet 1c id"
}

variable "SG_RDS_ID" {
  description = "security group id"
}
