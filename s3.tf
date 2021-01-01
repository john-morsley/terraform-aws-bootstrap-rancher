/*
  _____ ____     
 / ____|___ \   
| (___   __) |
 \___ \ |__ < 
 ____) |___) | 
|_____/|____/ 
                                               
            */

module "rancher-s3-bucket" {

  source = "./../terraform-aws-s3-bucket-module"
  //source = "john-morsley/s3-bucket/aws"

  name = local.bucket_name

}

module "rancher-admin-token" {

  source = "./../terraform-aws-s3-object-module"
  //source = "john-morsley/s3-object/aws"

  bucket_name = local.bucket_name

  key     = "/admin_token.txt"
  content = rancher2_bootstrap.admin.token
  
  depends_on = [ module.rancher-s3-bucket ]
  
}

module "rancher-admin-password" {

  source = "./../terraform-aws-s3-object-module"
  //source = "john-morsley/s3-object/aws"

  bucket_name = local.bucket_name

  key     = "/admin_password.txt"
  content = random_password.admin-password.result

  depends_on = [ module.rancher-s3-bucket ]
  
}