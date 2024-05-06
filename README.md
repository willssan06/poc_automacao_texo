## Pre-requisites

requires install:

- IDE [Visual Code | Ruby Mine | Or other compatible with Ruby]
- Ruby (version 2.7)

## Getting Started

First, install the latest packages with the command:

```bash
gem install bundler
```
gem install will donwload all dependencies present on the file [PASTA_RAIZ/Gemfile](./NOME_PROJETO/Gemfile)
```bash
bundle install
```

## Running Automation

For run all the test cases type the following command in the root project:

```bash
cucumber
```

## The project is organized using the pageObject pattern

### How it's working

##### 1 - Class

Inside this path is located all SoapUI integration and requests configuration

##### 2 - Page

Used for Page Objects (elements locator) and navigation code.

##### 3 - Specs [feature.feature]

Cucumber runner file with all Test Cases, each test has a cucumber tag @ which can be used to run individually.

##### 4 - step_definitions

A Step Definition is a method with an expression that links it to one or more Gherkin steps.
When Cucumber executes a Gherkin step in a scenario, it will look for a matching step definition to execute.

##### 5 - cucumber.yml

Used for cucumber configuration such as: environment config and running automation in headless.

### Reports

The reports are automatic generated after running cucumber. to access open them in browser,
Reports are included in [PASTA_PROJETO/reports](./PASTA_PROJETO/reports)
with names `cucumber_relatorio.html` and `report.html`