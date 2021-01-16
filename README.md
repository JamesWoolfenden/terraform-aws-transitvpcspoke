# terraform-aws-transitvpcspoke

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-transitvpcspoke/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-transitvpcspoke)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-transitvpcspoke.svg)](https://github.com/JamesWoolfenden/terraform-aws-transitvpcspoke/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-transitvpcspoke.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-transitvpcspoke/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-transitvpcspoke/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-transitvpcspoke&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-transitvpcspoke/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-transitvpcspoke&benchmark=INFRASTRUCTURE+SECURITY)

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:

```terraform
module "spoke" {
  source           = "github.com/JamesWoolfenden/terraform-aws-transitvpcspoke"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| archive | n/a |
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bucket\_name | The Name of the bucket | `string` | n/a | yes |
| bucket\_prefix | A prefix for the bucket, so you can have named environments | `string` | n/a | yes |
| common\_tags | Implements the common tags scheme | `map` | n/a | yes |
| config\_file | n/a | `string` | n/a | yes |
| event\_rule\_name | n/a | `string` | `"vgw_lambda_poller_event"` | no |
| function\_name | n/a | `string` | `"vgw_poller"` | no |
| log\_level | The Log level value must be one of 'DEBUG', 'INFO','WARNING', 'ERROR','CRITICAL'. | `string` | n/a | yes |
| policy\_name | The name of the policy | `string` | `"TransitVpcPollerPolicy"` | no |
| poller\_enabled | n/a | `bool` | `true` | no |
| rolename | n/a | `string` | `"TransitVpcPollerRole"` | no |
| runtime | The lambda runtime | `string` | `"python2.7"` | no |
| tracing\_mode | x-rays settings | `string` | `"Active"` | no |

## Outputs

| Name | Description |
|------|-------------|
| lambda | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Information

...

## Related Projects

Check out these related projects.

- [terraform-aws-codebuild](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Making a Build pipeline

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-transitvpcspoke/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-transitvpcspoke/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage] |

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-transitvpcspoke&url=https://github.com/jameswoolfenden/terraform-aws-transitvpcspoke
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-transitvpcspoke&url=https://github.com/jameswoolfenden/terraform-aws-transitvpcspoke
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-transitvpcspoke
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-transitvpcspoke
[share_email]: mailto:?subject=terraform-aws-transitvpcspoke&body=https://github.com/jameswoolfenden/terraform-aws-transitvpcspoke
