# ============================================================
# Environment: prod
# Purpose   : Live production traffic
# ============================================================

environment  = "prod"
project_name = "springapp"
region       = "us-east-1"
team_owner   = "platform-team"

# --- Networking ---
vpc_cidr             = "10.2.0.0/16"
availability_zones   = ["us-east-1a", "us-east-1b"]
public_subnet_cidrs  = ["10.2.1.0/24", "10.2.2.0/24"]
private_subnet_cidrs = ["10.2.11.0/24", "10.2.12.0/24"]
db_subnet_cidrs      = ["10.2.21.0/24", "10.2.22.0/24"]

# Dedicated NAT GW per AZ — no cross-AZ traffic, no SPOF
nat_gateway_per_az = true

# VPC endpoints — S3, SSM, Secrets Manager bypass internet
enable_vpc_endpoints = true

# --- Compute ---
instance_type        = "m5.large"
asg_min_size         = 2
asg_max_size         = 10
asg_desired_capacity = 2

# --- Database ---
db_engine_version      = "15.4"
db_instance_class      = "db.r6g.large"
db_name                = "springapp"
db_allocated_storage   = 200
db_multi_az            = true     # Automatic failover to standby AZ
db_backup_retention    = 30
db_deletion_protection = true     # Prevents accidental destroy

# --- Load Balancer ---
enable_https    = true
certificate_arn = "arn:aws:acm:us-east-1:ACCOUNT_ID:certificate/PROD-CERT-ID"

# --- Monitoring ---
enable_cloudwatch_alarms = true
log_retention_days       = 90
