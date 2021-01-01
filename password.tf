/*
 _____                                    _ 
|  __ \                                  | |
| |__) |_ _ ___ _____      _____  _ __ __| |
|  ___/ _` / __/ __\ \ /\ / / _ \| '__/ _` |
| |  | (_| \__ \__ \\ V  V / (_) | | | (_| |
|_|   \__,_|___/___/ \_/\_/ \___/|_|  \__,_|
                                             
                                          */
# https://www.terraform.io/docs/providers/random/r/password.html

resource "random_password" "admin-password" {

  length = 25

  lower       = true
  min_lower   = 5
  upper       = true
  min_upper   = 5
  number      = true
  min_numeric = 5
  special     = true
  min_special = 3

}