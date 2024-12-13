# Publish KMP Web App to GitHub Pages Action

## Overview
This GitHub Action allows you to easily publish a Kotlin Multiplatform (KMP) Web Application to GitHub Pages with minimal configuration.

## Features
- Builds Kotlin/JS web application
- Configures GitHub Pages
- Uploads static files
- Deploys to GitHub Pages
- Provides deployment URL as output

## Prerequisites
- Kotlin Multiplatform Project
- Gradle build system
- GitHub Pages enabled in repository settings

## Usage

### Basic Configuration
```yaml
name: Deploy Web App

on:
  push:
    branches:
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest
    permissions:
      pages: write
      id-token: write

    steps:
      - uses: actions/checkout@v4
      
      - name: Publish Web App
        uses: openMF/kmp-web-publish-action@v1
        with:
          web_package_name: 'your-web-module-name'
```

## Inputs

### `web_package_name`
- **Description**: Name of the web package/module in your Kotlin Multiplatform project
- **Required**: `true`
- **Type**: `string`
- **Example**: `'web'`, `'webApp'`

## Outputs

### `page_url`
- **Description**: URL of the deployed GitHub Pages site
- **Type**: `string`
- **Example**: `https://yourusername.github.io/repository-name/`

## Permissions Required
```yaml
permissions:
  pages: write      # Allows deployment to GitHub Pages
  id-token: write   # Enables secure token-based deployment
```

## Troubleshooting
- Ensure your Gradle build generates JS distribution in the expected path
- Verify GitHub Pages is enabled in repository settings
- Check Gradle build script for correct JS distribution task

## Notes
- Action uses `jsBrowserDistribution` Gradle task
- Uploads files from `build/dist/js/productionExecutable/`
- Supports single Kotlin Multiplatform Web module

## Contributing
Contributions and improvements are welcome! Please open an issue or submit a pull request.