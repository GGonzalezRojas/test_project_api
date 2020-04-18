provider "google"{
  credentials = file("test-project-23p-951d2ed368f2.json")
  project = "test-project-23p"
  region = "us-central1"
  zone = "us-central1"
}

resource "google_container_cluster" "primary" {
  name     = "test-23p-cluster"
  location = "us-central1-a"

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count = 1

  #enable_vpc_native = "false"


  # Setting an empty username and password explicitly disables basic auth
  master_auth {
    username = "" #"${var.cluster_auth_username}"
    password = "" #"${var.cluster_auth_password}"
    client_certificate_config {
      issue_client_certificate = false
    }
  }
  network_policy{
    enabled = true
  }
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "test-23p-default-node-pool"
  location   = "us-central1-a"
  cluster    = google_container_cluster.primary.name
  node_count = "1"

  node_config {
    preemptible  = false
    machine_type = "e2-standard-2"
    oauth_scopes = var.oauth_scopes
  }
}