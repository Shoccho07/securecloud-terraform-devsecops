resource "terraform_data" "project" {
  input = {
    project_name = var.project_name
    environment  = var.environment
    owner        = var.owner
  }
}
