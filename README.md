# Demo Spring Boot Application

A simple Spring Boot web application with CI/CD via GitHub Actions and API testing with Karate.

## Prerequisites

- Java 17+
- Maven 3.8+

## Running the Application

```bash
mvn spring-boot:run
```

The app starts on [http://localhost:8080](http://localhost:8080).

## Endpoints

| Method | Path     | Description              |
|--------|----------|--------------------------|
| GET    | `/`      | Returns "Hello, Spring Boot!" |
| GET    | `/hello` | Returns "Hello, World!"  |

## Running Tests

### Unit Tests

```bash
mvn test
```

### Karate API Tests

Start the application first, then run Karate tests:

```bash
mvn spring-boot:run &
mvn test -Dtest="com.example.demo.karate.HelloKarateTest" -Dkarate.base.url=http://localhost:8080
```

Karate HTML report will be generated at `target/karate-reports/karate-summary.html`.

## Building

```bash
mvn clean package
```

The JAR file will be in the `target/` directory. Run it with:

```bash
java -jar target/demo-0.0.1-SNAPSHOT.jar
```

## CI/CD

GitHub Actions workflow (`.github/workflows/build.yml`) runs on every push/PR to `main`:

1. **Build** — compiles, runs unit tests, publishes test summary, uploads JAR artifact
2. **Verify** — downloads the JAR, starts the app, runs Karate API tests, uploads Karate reports
```
