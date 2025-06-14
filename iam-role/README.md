# Purpose

Module to create an IAM Role

## How to use

| Var | Description| Type |
|-----| -----------|------|
| name | The name you want to give the IAM role| string|
|assume_role_policy | The trust policy for this role. Who/what do you want to assume this role| string|
| policies | mapping of policy descriptions to its actual policy documents | mapping (strings) |
| tags | tags you want to apply to your resources| mapping(string) |
