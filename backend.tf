terraform {
  cloud {
    organization = "personal_projects_morganevipayee"

    workspaces {
      name = "invoice-processing"
    }
  }
}