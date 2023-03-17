# Specify the provider (GCP, AWS, Azure)
provider "google"
credentials = "${file("credentials.json")}"
project = "prj-s-stage-1"
region = "us-central1"
}