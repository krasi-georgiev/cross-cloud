variable "name" { default = "aws" }

variable "internal_tld" { default = "aws.cncf.demo" }
variable "data_dir" { default = "/cncf/data/aws" }

# AWS Cloud Specific Settings
variable "aws_region" { default = "ap-southeast-2" }
variable "aws_key_name" { default = "aws" }
variable "aws_azs" { default = "ap-southeast-2a,ap-southeast-2b,ap-southeast-2c" }
variable "vpc_cidr" { default = "10.0.0.0/16" }
variable "allow_ssh_cidr" { default = "0.0.0.0/0" }

# VM Image and size
variable "admin_username" { default = "core" }
variable "aws_image_ami" { default = "ami-fde3e09e"} # channel/stable type/hvm
variable "aws_master_vm_size" { default = "m3.medium" }
variable "aws_worker_vm_size" { default = "m3.medium" }
variable "aws_bastion_vm_size" { default = "t2.nano" }

# Kubernetes
variable "cluster_domain" { default = "cluster.local" }
variable "pod_cidr" { default = "10.2.0.0/16" }
variable "service_cidr"   { default = "10.0.0.0/24" }
variable "k8s_service_ip" { default = "10.0.0.1" }
variable "dns_service_ip" { default = "10.0.0.11" }
variable "master_node_count" { default = "3" }
variable "worker_node_count" { default = "3" }
variable "worker_node_min" { default = "3" }
variable "worker_node_max" { default = "5" }

# Deployment Artifact Versions
# Hyperkube
# Set from https://quay.io/repository/coreos/hyperkube?tab=tags
variable "kubelet_image_url" { default = "gcr.io/google-containers/hyperkube"}
variable "kubelet_image_tag" { default = "v1.6.3"}

