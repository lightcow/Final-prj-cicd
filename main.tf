terraform {
  required_providers {     
    aws = {       
      source  = "hashicorp/aws"       
      version = "4.12.1"    
       }   
      }
       backend "remote" {
        organization = "lightcow"

        # The name of the Terraform Cloud workspace to store Terraform state files in.
        workspaces {
          name = "cicdtest"
        }
        
      }
   
    }

provider "aws" {
  region = "ap-northeast-2"
}