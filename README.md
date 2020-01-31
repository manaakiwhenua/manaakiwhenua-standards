# MWLR Standards Action

[![mwlr-standards](https://github.com/manaakiwhenua/mwlr-standards-action/workflows/mwlr-standards/badge.svg)](https://github.com/manaakiwhenua/mwlr-standards-action)

This action checks the repository meets Manaaki Whenua Landcare Research's git standards.

## Inputs

No inputs required.

## Outputs

No outputs required.

## Example Usage

Note, this action requires the checkout action.

```yaml
uses : 'actions/checkout@v2'
uses : actions/mwlr-standards-action@v0.1.0
```

## Standards

What are the MLWR Github standards?

* Repository must include a README.md file that is non empty.
* Repository must include a LICENSE file that is non empty.

## Installation Instructions

Please add the following code to .github/workflows/main.yml

```yaml
name: mwlr-standards

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
      - name : 'Checkout'
        uses : 'actions/checkout@v2'
      - name : 'mwlr-standards'
        uses : manaakiwhenua/mwlr-standards-action@v0.1.0
```

Add the following code to your README.md file.  Please change the `<NAME OF YOUR REPOSITORY>`.

```markdown
[![mwlr-standards](https://github.com/manaakiwhenua/<NAME OF YOUR REPOSITORY>/workflows/mwlr-standards/badge.svg)](https://github.com/manaakiwhenua/mwlr-standards-action)
```
