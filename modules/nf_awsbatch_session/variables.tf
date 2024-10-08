/*
   Copyright 2024 Julien FOURET

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

variable "prefix" {
  description = "The prefix for naming"
  type        = string
  default     = "nf_awsbatch"
}

variable "public_key" {
  description = "RSA public_key"
  type        = string
}

variable "subnet_id" {
  description = "ID of the public subnet where the EC2 instance will be launched"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance (expected to be Amazon Linux 2023)"
  type        = string
  default = "ami-0cb0b94275d5b4aec"
}

variable "job_queue" {
  description = "The name of the AWS Batch job queue. This queue is used to manage the execution order and priority of batch jobs."
  type        = string
}

variable "aws_region" {
  description = "The AWS region where resources will be created. This is used to specify the regional endpoint for AWS services."
  type        = string
  default = "eu-west-3"
}

variable "aws_profile" {
  description = "AWS profile"
  type        = string
}

variable "env_bucket_name" {
  description = "The name of the S3 bucket used for storing environment and application-specific data. This should be unique and follow AWS bucket naming conventions."
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to be used for computing tasks. This affects the compute capabilities and cost of the resources being utilized (e.g., 't2.micro', 'm5.large')."
  type        = string
  default = "t3.medium"
}

variable "tower_access_token" {
  description = "The token from the seqera plateform to use wave"
  type        = string
  default     = ""
}

variable "use_fusion" {
  description = "Flag to determine whether to use fusion or not"
  type        = bool
  default     = false
}

variable "volume_iops" {
  description = "IOPS for block storage"
  type        = number
  default     = 3000
}

variable "volume_throughput" {
  description = "Throughput (MB/s) for block storage"
  type        = number
  default     = 125
}

variable "volume_size" {
  description = "Volume size that must be higher than the root volume from base ami"
  type = number
  default = 100
}


