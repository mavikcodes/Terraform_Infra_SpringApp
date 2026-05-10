# ============================================================
# Environment: staging
# Purpose   : Pre-production integration & QA testing
# ============================================================

environment  = "staging"
project_name = "springapp"
region       = "us-east-1"
team_owner   = "platform-team"

# --- Networking ---
vpc_cidr             = "10.1.0.0/16"
availability_zones   = ["us-east-1a", "us-east-1b"]
public_subnet_cidrs  = ["10.1.1.0/24", "10.1.2.0/24"]
private_subnet_cidrs = ["10.1.11.0/24", "10.1.12.0/24"]
db_subnet_cidrs      = ["10.1.21.0/24", "10.1.22.0/24"]

# Per-AZ NAT GW in staging to mirror prod topology
nat_gateway_per_az = true

# VPC endpoints enabled (mirrors prod)
enable_vpc_endpoints = true

# --- Compute ---
instance_type        = "t3.medium"
asg_min_size         = 1
asg_max_size         = 4
asg_desired_capacity = 1

# --- Database ---
db_engine_version      = "15.4"
db_instance_class      = "db.t3.medium"
db_name                = "springapp"
db_allocated_storage   = 50
db_multi_az            = false
db_backup_retention    = 7
db_deletion_protection = false

# --- Load Balancer ---
enable_https    = true
certificate_arn = "arn:aws:acm:us-east-1:ACCOUNT_ID:certificate/STAGING-CERT-ID"

# --- Monitoring ---
enable_cloudwatch_alarms = true
log_retention_days       = 14
