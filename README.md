# Terra-Farm Github configuration

This repository contains the Github configuration of the `terra-farm` organization,
implemented with [Terraform](https://www.terraform.io).

## Setup

To initialize the `terraform` environment for this workspace, first provide a 
[Github token](https://github.com/settings/tokens) in a terraform variables 
[file ending with `.auto.tfvars`](https://www.terraform.io/intro/getting-started/variables.html#from-a-file):

```
github_token = "<your Github token here>"
```

The state backend is configured against Terraform Enterprise. [Hashicorp](https://www.hashicorp.com) 
graciously donated the `terra-farm` organization a free account. Only the Github organization
administrators have access to the Terraform Enterpise Accounts.

To complete the setup, access to the Terraform Enterprise backend must be configure by
exposing an [access token](https://app.terraform.io/app/settings/tokens) via an 
environment variable:

```
export ATLAS_TOKEN=<your TFE token here>
```

As an organization admin, you should now be able to execute succesfully:

```
terraform init
```

