terraform {
  required_providers {     
    aws = {       
      source  = "hashicorp/aws"       
      version = "4.12.1"    
       }   
      }
       Cloud {
        organization = "lightcow"

        # The name of the Terraform Cloud workspace to store Terraform state files in.
        workspaces {
          name = "cicdtest"
        }
    

      }
    }