/*Filepath loading...*/
locals {
  path = {
    networking = "${path.module}/parameters/networking/"
    security   = "${path.module}/parameters/security/"
    storage    = "${path.module}/parameters/storage/"
    database   = "${path.module}/parameters/database/"
  }
}
