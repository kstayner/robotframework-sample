# E2E Tests with Robot Framework

This is a sample project that demonstrates how to run end-to-end (E2E) tests with the Robot Framework. The tests ensure that the login functionality of a web application is working as expected.

## Requirements

Before running the tests, make sure you have the following requirements installed on your system:

- [Python](https://www.python.org/downloads/) (version >= 3.6)
- [Chrome Web Browser](https://www.google.com/chrome/) (compatible version with ChromeDriver)
- [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/downloads) (compatible with the installed Chrome version)

## Installation of Dependencies

1. Clone this repository:

   ```shell
   git clone https://github.com/kstayner/robotframework-sample.git

2. Navigate to the project directory:

   ```shell
   cd your-repo

3. Create a virtual environment (optional but recommended):

   ```shell
   python -m venv venv
   source venv/bin/activate  # Activate on Linux/Mac
   venv\Scripts\activate  # Activate on Windows

4. Install Python dependencies:

   ```shell
   pip install -r requirements.txt

5. Running the Tests. To execute the tests, open a terminal or command prompt in the project directory and run the following command:

   ```shell
   robot -d ./logs tests/LoginTests.robot
