/*
 _____                _     _               
|  __ \              (_)   | |              
| |__) | __ _____   ___  __| | ___ _ __ ___ 
|  ___/ '__/ _ \ \ / / |/ _` |/ _ \ '__/ __|
| |   | | | (_) \ V /| | (_| |  __/ |  \__ \
|_|   |_|  \___/ \_/ |_|\__,_|\___|_|  |___/
                                             
                                          */

# https://www.terraform.io/docs/providers/aws/index.html

provider "aws" {}

# https://www.terraform.io/docs/providers/rancher2/index.html

provider "rancher2" {

  alias = "bootstrap"

  api_url   = "https://${var.sub_domain}.${var.domain}"
  bootstrap = true

  insecure = false # This can be removed when Let's Encrypt is fully working

}