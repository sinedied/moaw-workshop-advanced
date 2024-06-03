# ⚙️ moaw-workshop-advanced

This repository contains a simple starter template for creating a [MOAW](https://moaw.dev) workshop.

This template includes the following:
- Built-in MOAW workshop documentation, located in the `docs` folder.
- A `.devcontainer` folder for setting up the workshop environment.
- A GitHub Actions workflow for automatically creating packages for the workshop (for intermediate steps, solution, etc).
- A [`setup-project.sh`](scripts/repo/setup-project.sh) script for setting up the project for the workshop.

## How to use this template

### Initial setup

1. Select the `Use this template` button on GitHub to create a new repository from this template.
2. Name your repository and select `Create repository from template`.

### Creating your workshop

From this point, you can start creating your workshop content in the `main` branch.
The following are some of the steps you can take to customize your workshop:
- Update the `docs` folder with your workshop content. See this [link](https://moaw.dev/workshop/create-workshop/?step=2#edit-the-workshop-metadata) for more information on how to author your workshop content.
- Update the `.devcontainer` folder with your workshop environment.
- Update the `scripts/repo/create-packages.sh` script to create packages for your workshop (see `TODO:` notes in the script).
- Update the `scripts/repo/setup-project.sh` script to create the GitHub template for your workshop (see `TODO:` notes in the script). In your workshop documentation, you should include instructions for users to run this script to set up their project.

To make it easier to edit your workshop docs, you can use the [MOAW CLI](https://github.com/microsoft/moaw/tree/main/packages/cli):

- Run `moaw serve` to preview your workshop content locally, with live reload.
- Run `moaw link docs/workshop.md` once your workshop is complete to generate a shareable link to your workshop.

## All MOAW templates

- [moaw-workshop-basic](https://github.com/sinedied/moaw-workshop-basic): A basic template for creating a MOAW workshop, only containing the workshop documentation and devcontainer setup.
- [moaw-workshop-advanced](https://github.com/sinedied/moaw-workshop-advanced): A more advanced template for creating a MOAW workshop from a complete project repository. In addition to the workshop documentation and devcontainer setup, it includes template scripts to create one or more packages and setup the initial project structure.

## Contributing

This project welcomes contributions and suggestions. Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft
trademarks or logos is subject to and must follow
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
