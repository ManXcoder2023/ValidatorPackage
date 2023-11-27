# ValidatorPackage

ValidatorPackage is a Swift package that provides a versatile `Validator` class for common validation tasks.

## Validator Class

### Validator.swift

The `Validator` class within the ValidatorPackage offers the following validation methods:

#### 1. Email Validation

```swift
func checkIfValidEmail(email: String) -> Bool
This method checks if the provided email address is valid based on a regular expression pattern.

Usage:

let validator = Validator()
let isValidEmail = validator.checkIfValidEmail(email: "example@example.com")
if isValidEmail {
    print("Valid email address.")
} else {
    print("Invalid email address.")
}

####  2. Civil ID Validation

func isCivilIDValid(_ civilID: String) -> Bool

This method validates a civil ID number, including a specific algorithm to ensure its correctness.


#### Usage:

let validator = Validator()
let isValidCivilID = validator.isCivilIDValid("123456789012")
if isValidCivilID {
    print("Valid civil ID.")
} else {
    print("Invalid civil ID.")
}

#### Installation
Swift Package Manager (SPM)
Add the following dependency to your Package.swift file:

dependencies: [
    .package(url: "https://github.com/yourusername/ValidatorPackage.git", from: "1.0.0")
],
targets: [
    .target(
        name: "YourProject",
        dependencies: ["ValidatorPackage"]
    )
]

Replace "https://github.com/yourusername/ValidatorPackage.git" with the URL of your GitHub repository.


