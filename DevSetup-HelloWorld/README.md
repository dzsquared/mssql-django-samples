# Getting the Development Environment Setup

## Option 1: VS Code Dev Container or GitHub Codespaces
This repository contains a definion for a local development environment where the prerequisites listed under "Manual Setup" are included.  For more about using containers for local development with VS Code, please see the [VS Code docs](https://code.visualstudio.com/docs/remote/containers).

In short, if you clone this repository to your workstation and install the corresponding "Remote - Containers" extension for VS Code, a container definition is available to launch VS Code into a **ready to go mssql-django development environment**.


## Option 2: Manual Setup

If you opt to skip the devcontainer defition mentioned in "Option 1", these are the overall requirements for directly setting up your environment for mssql-django development.

Development with Django and MSSQL has a few prerequisites:
- Python 3
- [ODBC driver](https://docs.microsoft.com/sql/connect/odbc/microsoft-odbc-driver-for-sql-server)

Within Python, the following modules are required and can be installed with their corresponding commands:
- pyodbc `python -m pip install pyodbc`
- Django `python -m pip install django`
- mssql-django `python -m pip install mssql-django`

