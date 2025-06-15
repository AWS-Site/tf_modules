# Purpose

Module to create an IAM Role

## How to use

| Var | Description| Type |
|-----| -----------|------|
| name | The name you want to give the IAM role| string|
|assume_role_policy | The trust policy for this role. Who/what do you want to assume this role| string|
| policies | mapping of policy descriptions to its actual policy documents.| mapping (strings) |
| tags | tags you want to apply to your resources| mapping(string) |

**Note:** The module handles the policy creation and attachment to the roles (for both the general policies as well as the assumption policy).
Easietst to use a data block and import it by using `.json` to render. 

For example:

```terrform
module "iam_role" {
  source = "git::https://github.com/AWS-Site/tf_modules.git//iam-role?ref=initial_modules"
  
  name        = "example-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  policies = {
    base_bucket_policy = {
        description = "Permissions to access a bucket"
        json= data.aws_iam_policy_document.s3_read_policy.json
    }
  }
}
```