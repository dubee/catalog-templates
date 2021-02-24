provider "ibm" {
  iam_token = var.iam_token
  iam_refresh_token = var.iam_refresh_token
  region           = var.region
}
