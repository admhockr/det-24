data "terraform_remote_state" "foo" {
  backend = "http"
  config = {
    address = "https://github.com/admhockr/det-24.git"
  }
}
