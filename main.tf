terraform {
  required_providers {     
    aws = {       
      source  = "hashicorp/aws"       
      version = "4.12.1"    
      }   
    }
    
    cloud  {
      organization = "lightcow"
      workspaces {
        name = "cicdtest"
        }
      }
    }

provider "aws" {
  region = "ap-northeast-2"
}