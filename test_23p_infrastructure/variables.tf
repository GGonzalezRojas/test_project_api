variable "oauth_scopes" {
    description = "Pod scopes"
    default = ["https://www.googleapis.com/auth/compute","https://www.googleapis.com/auth/devstorage.full_control",
                "https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/servicecontrol",
                "https://www.googleapis.com/auth/service.management.readonly" ,"https://www.googleapis.com/auth/trace.append",
                "https://www.googleapis.com/auth/cloud-platform","https://www.googleapis.com/auth/monitoring.write",
                "https://www.googleapis.com/auth/projecthosting"]
}
