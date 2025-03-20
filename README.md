# Orange HRM - Robot Framework ![Status](https://github.com/MateoAgudGarcia/orange-hrm-robotframework/actions/workflows/main-branch-deployment.yml/badge.svg)

## Description

This project is a proof of concept (POC) demonstrating the use of Robot Framework for automated testing of the Orange HRM application. It emphasizes the integration of Poetry for dependency management and virtual environment handling, ensuring a streamlined and reproducible setup process.

The primary goal of this project is to provide a clear and concise example of how to:

- Automate web application testing using Robot Framework.
- Leverage Poetry to manage dependencies and virtual environments effectively.
- Organize test cases and reusable keywords for maintainability.
- Integrate with tools like Selenium for browser automation.
- Generate detailed test reports and logs for analysis.

By following this POC, developers and testers can quickly get started with Robot Framework and Poetry, applying similar setups to their own projects for efficient and maintainable test automation.

## Installation

1. Clone the repository:

   ```sh
   git clone git@github.com:mateoagudgarcia/orange-hrm-robotframework.git
   cd orange-hrm-robotframework
   ```

2. Create a virtual environment and activate it:

   ```sh
   poetry env activate
   ```

3. Install the required dependencies:

   ```sh
   poetry install
   ```

## Running Tests

To execute the test suite, use the following command:

```sh
poetry run robot-tests
```

This will run all test cases and generate logs and reports in the `results/` directory.

### Last 30 builds deployed using GH Pages: [Orange HRM - Robot Framework](https://mateoagudgarcia.github.io/orange-hrm-robotframework)

## Project Structure

```plaintext
orange-hrm-robotframework
├── PageObject/
│   ├── KeywordDefinitionFiles/
│   ├── Locators/
│   └── TestData/
├── README.md
├── pyproject.toml
├── Tests/
├── results/
└── .gitignore
```

## Test Reports

After running the tests, you can view the generated reports and logs in the `reports/` directory. Open the `report.html` file in a browser to analyze the test results.
