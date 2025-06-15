# Purpose

Module to create an IAM group.

## How to use

| Var | Description| Type |
|-----| -----------| ----- |
| group_name | The name you want to give the group | string|
| assumable_role_arns | List of arns you will allow this group to assume | list(string)|
| account_number | The account number you are working in. | string |
| env | The environment you want to create this resource in| string |
