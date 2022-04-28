module "gcs-static-website-bucket" {
  source = "./modules/my-module"
  name       = var.name
  project_id = var.project_id
  location   = "us-east1"
  lifecycle_rules = [{
    action = {
      type = "Delete"
    }
    condition = {
      age        = 365
      with_state = "ANY"
    }
  }]
}