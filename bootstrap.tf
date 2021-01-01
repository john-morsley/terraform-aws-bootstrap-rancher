/*
 ____              _       _                     _____                  _               
|  _ \            | |     | |                   |  __ \                | |              
| |_) | ___   ___ | |_ ___| |_ _ __ __ _ _ __   | |__) |__ _ _ __   ___| |__   ___ _ __ 
|  _ < / _ \ / _ \| __/ __| __| '__/ _` | '_ \  |  _  // _` | '_ \ / __| '_ \ / _ \ '__|
| |_) | (_) | (_) | |_\__ \ |_| | | (_| | |_) | | | \ \ (_| | | | | (__| | | |  __/ |   
|____/ \___/ \___/ \__|___/\__|_|  \__,_| .__/  |_|  \_\__,_|_| |_|\___|_| |_|\___|_|   
                                        | |                                             
                                        |_|                                             
                                                                                      */
# Take a newly installed Rancher and booststrap it...

# https://www.terraform.io/docs/providers/rancher2/r/bootstrap.html

resource "rancher2_bootstrap" "admin" {

  provider = rancher2.bootstrap

  password  = random_password.admin-password.result
  telemetry = true

}