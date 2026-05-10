# ============================================================
# Environment: dev
# Purpose   : Local development & feature branch testing
# ============================================================

environment  = "dev"
project_name = "springapp"
region       = "us-east-1"
team_owner   = "platform-team"

# --- Networking ---
vpc_cidr             = "10.0.0.0/16"
availability_zones   = ["us-east-1a", "us-east-1b"]
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.11.0/24", "10.0.12.0/24"]
db_subnet_cidrs      = ["10.0.21.0/24", "10.0.22.0/24"]

# Single shared NAT GW in dev to save cost
nat_gateway_per_az = false

# No VPC endpoints in dev (save cost)
enable_vpc_endpoints = false

# --- Compute ---
instance_type    = "t3.small"
asg_min_size     = 1
asg_max_size     = 2
asg_desired_capacity = 1

# --- Database ---
db_engine_version    = "15.4"
db_instance_class    = "db.t3.micro"
db_name              = "springapp"
db_allocated_storage = 20
db_multi_az          = false
db_backup_retention  = 1
db_deletion_protection = false

# --- Load Balancer ---
enable_https         = false   # HTTP only in dev
certificate_arn      = ""

# --- Monitoring ---
enable_cloudwatch_alarms = false
log_retention_days       = 7
