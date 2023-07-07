# Set eks variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
	cluster_name                    = "devops-mgmt-tst"
	cluster_version                 = "1.27"
	cluster_endpoint_private_access = true
	cluster_endpoint_public_access  = false
	private_subnet_id1				= [""]
	private_subnet_id2				= [""]
	cluster_enabled_log_types       = ["api", "audit", "authenticator", "controllerManager", "scheduler"] 
	disk_size                       = 50
	instance_types                  = ["m5a.xlarge", "m6i.large", "m5.large", "m5n.large", "t3a.large"]
	ami_type                        = "AL2_x86_64"
	additonal_iam_policy1_arn       = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
	additonal_iam_policy2_arn       = "arn:aws:iam::aws:policy/AutoScalingFullAccess"
	manage_aws_auth_configmap       = false
	attach_cni_policy               = false
	min_size						= 1
	max_size						= 10
	desired_size					= 1
	capacity_type					= "ON_DEMAND"
	force_update_version			= false
	montreal_vpn					= [""]
}