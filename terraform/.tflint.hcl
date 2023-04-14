plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

rule "terraform_required_version" {
  enabled = false   # Declared in Jinja template
}

rule "terraform_module_pinned_source" {
  enabled = false
}

plugin "aws" {
    enabled = true
    version = "0.22.1"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
}
