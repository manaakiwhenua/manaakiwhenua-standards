[![manaakiwhenua-standards](https://github.com/manaakiwhenua/manaakiwhenua-standards/workflows/manaakiwhenua-standards/badge.svg)](https://github.com/manaakiwhenua/manaakiwhenua-standards)

# Manaaki Whenua - Landcare Research GitHub Repository Standards


Each time changes are pushed to a repository this GitHub action checks that the repository meets the Manaaki Whenua -- Landcare Research's GitHub repository standards and reports the status as either passing or failing via a repository status badge.

## Current standards

For a repository to meet the Manaaki Whenua standards the repository must contain:

* A README.md file that is non-empty.
* A LICENSE file that is non-empty.  The LICENSE file can be named 'LICENSE', 'LICENSE.txt', or 'LICENSE.md'.

## Inputs

No inputs required.

## Outputs

No outputs required.

## Example Usage

Note, this action requires the checkout action.

```yaml
uses : 'actions/checkout@v2'
uses : actions/manaakiwhenua-standards@v0.1.1
```

## Installation Instructions

Please add the following code to .github/workflows/main.yml

```yaml
name: manaakiwhenua-standards

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
      - name : 'Checkout'
        uses : 'actions/checkout@v2'
      - name : 'manaakiwhenua-standards'
        uses : manaakiwhenua/manaakiwhenua-standards@v0.1.1
```

Add the following code to your README.md file.  Please change the `<NAME OF YOUR REPOSITORY>` in the following line of code to your repository name.

```markdown
[![manaakiwhenua-standards](https://github.com/manaakiwhenua/<NAME OF YOUR REPOSITORY>/workflows/manaakiwhenua-standards/badge.svg)](https://github.com/manaakiwhenua/manaakiwhenua-standards)
```
