# Yet another mega Python project

Collect from start to end setup & usage instructions/steps

TOC

- [Yet another mega Python project](#yet-another-mega-python-project)
  - [Steps have been taken to implement this project](#steps-have-been-taken-to-implement-this-project)
    - [\[SOLID\_BASE\] Development Environment for Python Projects](#solid_base-development-environment-for-python-projects)
    - [Project idea(s)](#project-ideas)
    - [Tech stack](#tech-stack)
    - [DevOps practices and pipeline](#devops-practices-and-pipeline)
  - [References](#references)

## Steps have been taken to implement this project

### [SOLID_BASE] Development Environment for Python Projects

- [x] Managing different Python versions on the same machine with `pyenv` Python manager
- [x] Configuring the virtual environment and standardizing dependency management process with `Poetry` (alternatives: `pip`, `pipenv`, `pdm`)
- [x] Code Quality Authority tools: linters, auto-formatters, typing checks:
  - Classic and well known static code analyser [pylint](https://github.com/pylint-dev/pylint)
  - An extremely fast (x10-100) Python linter + autofix, written in Rust [ruff](https://github.com/astral-sh/ruff). Amazing alternative to many tools: Flake8 (plus dozens of plugins), isort, pydocstyle, yesqa, eradicate, pyupgrade, and autoflake.
  - Organizing code style checking with [flake8](https://github.com/PyCQA/flake8) + plugins
  - Defining consistent code formatting rules by means of [black](https://github.com/psf/black)
  - "isort your imports, so you don't have to" (c) [isort](https://github.com/PyCQA/isort)
  - Security oriented checks with [bandit](https://github.com/PyCQA/bandit)
  - Static type checking with `mypy` (alternatives: [pyright](https://github.com/microsoft/pyright), [pytype](https://github.com/google/pytype/), [pyre](https://github.com/facebook/pyre-check))
- [x] Incorporate `pre-commit`: add config file, add hooks, sets up .pre-commit-ci.yaml
- [x] Invoking the configured tools with `Make` (alternatives: [doit](https://pydoit.org/), [pypyr](https://github.com/pypyr/pypyr/), [Typer](https://typer.tiangolo.com/))

### Project idea(s)

find a niche, identify a problem
explore free/open APIs
create a way to use those open API, consume, transform into valuable product:
  other API
  static website with cool dashboard, info, analytics
  interactive website with cool/funny information for developers only OR everybody
  host website, use best practices, protect/secure it, monitor
  put donate/BuyMeaCoffe button on this site
  collect feedback
  improve it!!

### Tech stack

df

### DevOps practices and pipeline

df

## References

1. <https://vglushko.github.io/development/2022/12/22/python-dev-environment.html>
2. <https://testdriven.io/guides/complete-python/>
3. <https://devguide.python.org/versions/>

<https://www.youtube.com/watch?v=3cUkvFKYbHE>
<https://www.programmingexpert.io/index>
<https://mindmajix.com/postgresql-interview-questions#advantages>
<https://registry.terraform.io/namespaces/terraform-aws-modules>
<https://app.localstack.cloud/dashboard>
