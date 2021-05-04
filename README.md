# user-examples

This repository contains examples of stock synthesis models for users. The [model metadata](#metadata-for-example-models) more fully describes key features of the examples. 

# Table of Contents
-   [Do these models always use Stock Synthesis best practices?](#do-these-models-always-use-stock-synthesis-best-practices)
-   [How can I submit my model to be a user example?](#how-can-i-submit-my-model-to-be-a-user-example)
-   [How do I request a certain type of example?](#how-do-i-request-a-certain-type-of-example)
-   [Metadata for example models](#metadata-for-example-models)
-   [Selectivity examples](#selectivity-examples)
-   [Contributing guide](#contributing-guide)
-   [Disclaimer](#disclaimer)

# Do these models always use Stock Synthesis best practices?

Not always, as Stock Synthesis best practices are constantly evolving. However, all of these models are valid stock synthesis setups. In the future, these example models may be updated to follow best practices (feel free to suggest changes by submitting an issue or pull request).

To learn more about general stock assessment (i.e., not specific to Stock Synthesis) best practices, visit the [Center for the Advancement of Population Assessment Methodology (CAPAM) website](http://www.capamresearch.org/).

# How can I submit my model to be a user example?

Model contributions are welcome! Please open a [pull request](https://github.com/nmfs-stock-synthesis/user-examples/pulls) after reading the [contribution guide](https://github.com/nmfs-stock-synthesis/user-examples#general-contribution-info) and [code of conduct](#code-of-conduct).

# How do I request a certain type of example?

First, please take a look at the current examples available and their [notable features](#metadata-for-example-models). If there isn't one available that meets your needs, please request the type of example model that would be helpful by [opening an issue](https://github.com/nmfs-stock-synthesis/user-examples/issues) or sending an email to nmfs.stock.synthesis@noaa.gov.

# Metadata for example models
| Model name | Notable features | 
| --- | --- |
| simple						  | Long-standing example model. Includes most data types | 
| simple_with_discard             | "simple" with discard data added |
| empirical_wtatage_and_age_selex | Uses empirical weight-at-age, based on "simple" |
| selex_age_example				  | Illustrates setup for 6 age-based selectivity types. [More detail below.](#selectivity-examples)|
| selex_length_example			  | Illustrates setup for 6 length-based selectivity types. [More detail below.](#selectivity-examples)|

# Selectivity examples
The models [selex_length_example](https://github.com/nmfs-stock-synthesis/user-examples/tree/main/model_files/selex_length_example) and [selex_age_example](https://github.com/nmfs-stock-synthesis/user-examples/tree/main/model_files/selex_age_example) can be used to see the control file setup for 5 length-based and 6 age-based selectivity types as shown in the figure below.

![selectivity at length and age as estimated in the 'selex_length_example' and 'selex_age_example' models](https://github.com/nmfs-stock-synthesis/user-examples/blob/main/figures/selex_shapes.png?raw=true)

These examples were created for a tutorial at the [2013 CAPAM workshop on selectivity](http://www.capamresearch.org/current-projects/selectivity). In these models, each fleet is provided the same simulated data so the large differences in estimated uncertainty associated with each type (as shown in the plot below) are an illustration of the flexibility of each type. Note: this figure depends on iteratively changing the fleet associated with the reported selectivity uncertainty specified at the bottom of the control file.
![uncertainty in selectivity at length as estimated in the 'selex_length_example' models](https://github.com/nmfs-stock-synthesis/user-examples/blob/main/figures/selex_length_uncertainty.png?raw=true)

# Contributing guide

## General contribution info

Thank you for your interest in contributing example models! Before contributing, please read the [code of conduct](#code-of-conduct).

We strive to follow the [NMFS Fisheries Toolbox Contribution Guide](https://github.com/nmfs-fish-tools/Resources/blob/master/CONTRIBUTING.md). Note that these are guidelines, not rules, and we are open to collaborations in other ways that may work better for you. Please feel free to reach out to us by opening an issue in this repository or by emailing the developers at nmfs.stock.synthesis@noaa.gov.

## How to submit a pull request

1. [Fork](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo) the stock synthesis repository (or, if you are a member of the nmfs-stock-synthesis organization, clone the repository).
2. Create a new branch and make the changes (likely adding new model files).
3. Commit the changes and push up to the github fork.
4. [Submit a pull request](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request-from-a-fork) to the main branch of the user-examples repository.

# Code of conduct

This project and everyone participating in it is governed by the [NMFS Fisheries Toolbox Code of Conduct](https://github.com/nmfs-fish-tools/Resources/blob/master/CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Please report unacceptable behavior to [fisheries.toolbox@noaa.gov](mailto:fisheries.toolbox@noaa.gov). Note that the maintainers of SS do not have access to this email account, so unacceptable behavior of the maintainers can also be reported here.

The NFMS Fisheries Toolbox Code of Conduct is adapted from the [Contributor Covenant][homepage], version 1.4,
available at https://www.contributor-covenant.org/version/1/4/code-of-conduct.html

[homepage]: https://www.contributor-covenant.org

For answers to common questions about this code of conduct, see
https://www.contributor-covenant.org/faq

# Disclaimer

“The United States Department of Commerce (DOC) GitHub project code is provided 
on an ‘as is’ basis and the user assumes responsibility for its use. DOC has 
relinquished control of the information and no longer has responsibility to 
protect the integrity, confidentiality, or availability of the information. Any 
claims against the Department of Commerce stemming from the use of its GitHub 
project will be governed by all applicable Federal law. Any reference to 
specific commercial products, processes, or services by service mark, trademark,
manufacturer, or otherwise, does not constitute or imply their endorsement,
recommendation or favoring by the Department of Commerce. The Department of 
Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used 
in any manner to imply endorsement of any commercial product or activity by DOC
or the United States Government.”
