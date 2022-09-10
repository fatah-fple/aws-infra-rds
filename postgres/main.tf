#### DB Parameter Group ####
resource "aws_db_parameter_group" "db_param_1" {
  description = "db1 param group"
  family = var.DB_PARAM_FAMILY
  name        = format("%s-param", var.PROJECT_NAME)

}

#### DB Subnet Group ####
resource "aws_db_subnet_group" "db_subnetgrp_1" {
  subnet_ids = [var.PVT_1a, var.PVT_1b, var.PVT_1c]
  name = format("%s-subnetgrp", var.PROJECT_NAME)
  description = "db1 RDS Subnet Group"
}

#### DB Instance ####
resource "aws_db_instance" "db_1" {
  instance_class = var.DB_INSTANCE_CLASS
  identifier = format("%s-prod-rds", var.PROJECT_NAME)
  db_subnet_group_name = aws_db_subnet_group.db_subnetgrp_1.id
  allocated_storage = var.DB_DISK_SIZE
  auto_minor_version_upgrade = "true"
  backup_retention_period = "7"
  backup_window = "18:20-18:50"
  copy_tags_to_snapshot = "true"
  deletion_protection = "true"
  engine = var.DB_ENGINE
  engine_version = var.DB_ENGINE_VERSION
  iam_database_authentication_enabled = "false"
  iops = "0"
  maintenance_window = "sat:17:29-sat:17:59"
  max_allocated_storage = var.DB_DISK_SIZE_MAX
  publicly_accessible = "false"
  storage_type = "gp2"
//  name = format("%s-prod", var.PROJECT_NAME)
  username = var.DB_MASTER_USER
  password = var.DB_MASTER_PASSWORD
  parameter_group_name = aws_db_parameter_group.db_param_1.id
  vpc_security_group_ids = [var.SG_RDS_ID]
}
