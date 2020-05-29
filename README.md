# kiss-cooking

![CI](https://github.com/BinaryTiger/kiss-cooking/workflows/CI/badge.svg?branch=master)

## Motivation

Somewhere in the 2000s, the web evolved. Since then every cooking website includes a ton of bloat to rank higher on search engine results, analytics because user data is king and all around bloat to meet the web 2.0 standards. In this project, less is more.

This was made primarily as a recipe bookmark website for myself. The value derived from the site for other is an added bonus.

## Tech WHYs
#### Usage of dhall

Since this project is mostly data driven, I wanted to make sure that the data was good. Most configuration language and format are schema-less and dynamically interpreted. dhall let the CI tool make sure that whatever changes were made in the data files that it still fits the general schema of a recipe.

#### Usage of mustache

Mustache is small and mature. Without the need for complex logic in the templates, mustache fitted the bill perfectly.

#### Usage of Docker

The docker container is used as a build environment for the project. Having the same version of bash, mustache and dhall on every build, independent of the machine, let the project have reproducible builds and streamline the debugging in the CI/CD tool.

#### Github Actions and Github pages

Free and easy to integrate to any GitHub project.

## Design WHYs
#### General
The basic requirements for me where:
 - Must be usable from mobile or desktop (responsive)
 - Pages must load fast
 - Printer friendly
 - No tracking or analytics
 - Except the writing of the recipe itself, no manual operation needed build and deploy the site

#### No Javascript
The site exist to present data. The was no need for interactivity, animation or DOM manipulation.

This design choice contribute to the fast loading requirement. Less code to load and run means faster loading time.

Without Javascript loading, the user also know that he is not tracked.

The site is therefore usable from any browser (including text based browser) and with any Javascript blocking extension.

#### Statically Built
The data is compiled to simple html files with static css. This reduce the requirement for hosting. It is then a matter of building the site automatically when the data change. This is done with Github actions on changes made to the master branch.

## Contribute
1. Fork the project
2. Copy the `template.dhall` file to the data folder with a proper name
3. Fill the dhall config file with the recipe ingredients and steps
4. Submit a pull request
