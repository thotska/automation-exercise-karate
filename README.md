# Automation Exercise - Karate API Testing Framework

This project contains automated API tests for the Automation Exercise website using the Karate framework.

## Prerequisites

- Java 11 or higher
- Maven 3.6 or higher

### Installing Prerequisites

#### Java Installation
1. Download JDK 11 or higher from [Oracle](https://www.oracle.com/java/technologies/downloads/) or [OpenJDK](https://adoptium.net/)
2. Install and add Java to your system PATH
3. Verify installation: `java -version`

#### Maven Installation
1. Download Maven from [Apache Maven](https://maven.apache.org/download.cgi)
2. Extract to a directory (e.g., `C:\Program Files\Apache\maven`)
3. Add Maven's `bin` directory to your system PATH
4. Verify installation: `mvn -version`

## Project Structure

```
automation-exercise-karate/
├── pom.xml
└── src/test/java/
    ├── karate-config.js
    └── automationexercise/
        ├── AutomationExerciseRunner.java
        └── automationexercise.feature
```

## Test Cases

### API 1: Get All Products List
- **URL**: https://automationexercise.com/api/productsList
- **Method**: GET
- **Expected Response Code**: 200
- **Expected Response**: All products list

### API 2: POST To All Products List
- **URL**: https://automationexercise.com/api/productsList
- **Method**: POST
- **Expected Response Code**: 405
- **Expected Response Message**: This request method is not supported.

### API 3: Get All Brands List
- **URL**: https://automationexercise.com/api/brandsList
- **Method**: GET
- **Expected Response Code**: 200
- **Expected Response**: All brands list

## Running Tests

### Run all tests
```bash
mvn test
```

### Run tests with specific tags (if added later)
```bash
mvn test -Dkarate.options="--tags @smoke"
```

### Run specific feature file
```bash
mvn test -Dkarate.options="classpath:automationexercise/automationexercise.feature"
```

## Test Reports

After running tests, HTML reports will be generated at:
```
target/karate-reports/karate-summary.html
```

## Configuration

The base URL and other configurations can be modified in `src/test/java/karate-config.js`.

## Dependencies

- **Karate**: 1.4.1
- **JUnit 5**: Included with Karate

## Environment Variables

You can set the environment using:
```bash
mvn test -Dkarate.env=prod
```

Available environments: `dev` (default), `prod`
