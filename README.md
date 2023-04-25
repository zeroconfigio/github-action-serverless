# Github Action for Serverless

This Action enables you to use common [Serverless Framework](https://serverless.com) commands on your workflow.

## Usage

An example workflow to deploy a project with serverless v3:


> **NOTE**
>
> This action only supports Serverless Framework v3 at the moment, more specifically from v3.15.2.
>
> There's an ongoing work to add support for the older versions as well.


```yaml
name: Deploy main branch

on:
  push:
    branches:
      - main

jobs:
  deploy:
    name: deploy
    runs-on: ubuntu-latest
    strategy:
      matrix:
        node-version: [16.x]
    steps:
      - uses: actions/checkout@v3

      - name: Use Node.js ${{ matrix.node-version }}
        uses: actions/setup-node@v3
        with:
          node-version: ${{ matrix.node-version }}

      - run: npm ci

      - name: serverless deploy
        uses: serverless/github-action@v3.1
        with:
          args: deploy
        env:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          SLS_VERSION: "3.16.1" # optional (default: latest)
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the MIT license.