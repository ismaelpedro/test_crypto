# Crypto App

A Flutter application using **Clean Architecture** principles, structured with separation of concerns for better scalability, maintainability, and testability.

## 🧱 Project Structure

```bash
lib/
├── src/
│   └── crypto/
│       ├── data/
│       │   ├── datasources/
│       │   │   ├── crypto_datasource.dart
│       │   │   └── i_crypto_datasource.dart
│       │   ├── dtos/
│       │   │   ├── crypto_dto.dart
│       │   │   ├── crypto_dto.freezed.dart
│       │   │   └── crypto_dto.g.dart
│       │   └── repositories/
│       │       ├── crypto_repository.dart
│       │       └── i_crypto_repository.dart
│       ├── domain/
│       ├── ui/
│       │   ├── controller/
│       │   │   └── crypto_controller.dart
│       │   └── views/
│       │       ├── crypto_detail_view.dart
│       │       └── home_view.dart
│       └── di.dart
├── main.dart
````

🔄 Layers Explained
data/
Handles data-related logic. It contains:

datasources/: Interfaces and implementations for data access (e.g., APIs, databases).

dtos/: Data Transfer Objects using freezed for immutability and serialization.

repositories/: Concrete implementations of domain-level repository interfaces.

domain/
This layer is intended for:

Entities

Repository interfaces

Use cases

🔒 Note: This directory is currently empty or in progress.

ui/
Responsible for the presentation layer. Includes:

controller/: Logic layer (e.g., using GetX or another state management solution).

views/: UI widgets and screens.

di.dart
Handles dependency injection configuration.

main.dart
App entry point.

🧰 Tools & Packages
freezed for immutable models and sealed classes

get_it or injectable for DI (assumed)

