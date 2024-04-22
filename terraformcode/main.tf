terraform {
  required_providers {
    opensearch = {
      source = "opensearch-project/opensearch"
      version = "2.2.1"
    }
  }
}

provider "opensearch" {
  url = "http://localhost:9200"
  username          = "admin"
  password          = "myStrongPassword123@456"

  version_ping_timeout = "10"

}


resource "opensearch_cluster_settings" "global" {
   cluster_routing_allocation_enable = "all"
}