# Demo Spring Boot Application

A simple Spring Boot web application.

## Prerequisites

- Java 17+
- Maven 3.8+

## Running the Application

```bash
mvn spring-boot:run
```

The app starts on [http://localhost:8080](http://localhost:8080).

## Endpoints

| Method | Path     | Description          |
|--------|----------|----------------------|
| GET    | `/`      | Returns a greeting   |
| GET    | `/hello` | Returns "Hello, World!" |

## Running Tests

```bash
mvn test
```

## Building

```bash
mvn clean package
```

The JAR file will be in the `target/` directory. Run it with:

```bash
java -jar target/demo-0.0.1-SNAPSHOT.jar
```
