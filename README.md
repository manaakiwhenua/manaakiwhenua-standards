# Manaaki Whenua Standards

[![manaakiwhenua-standards](https://github.com/manaakiwhenua/manaakiwhenua-standards/workflows/manaakiwhenua-standards/badge.svg)](https://github.com/manaakiwhenua/manaakiwhenua-standards)

This action checks the repository meets Manaaki Whenua Landcare Research's git standards.

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

## Standards

What are the MLWR Github standards?

* Repository must include a README.md file that is non empty.
* Repository must include a LICENSE file that is non empty.  The LICENSE file can be named 'LICENSE', 'LICENSE.txt', or 'LICENSE.md'.

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

Add the following code to your README.md file.  Please change the `<NAME OF YOUR REPOSITORY>`.

```markdown
[![manaakiwhenua-standards](https://github.com/manaakiwhenua/<NAME OF YOUR REPOSITORY>/workflows/manaakiwhenua-standards/badge.svg)](https://github.com/manaakiwhenua/manaakiwhenua-standards)
```
