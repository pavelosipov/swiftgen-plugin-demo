// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Packages",
  defaultLocalization: "en",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "Fizz", targets: ["Fizz"]),
    .library(name: "Buzz", targets: ["Buzz"])
  ],
  dependencies: [
    .package(url: "https://github.com/pavelosipov/swiftgen-plugin", from: "1.0.0"),
  ],
  targets: [
    .target(
      name: "Fizz",
      dependencies: ["SharedResources"],
      exclude: ["Resources/swiftgen.yml"],
      resources: [.process("Resources")],
      plugins: [
        .plugin(name: "SwiftGenPlugin", package: "swiftgen-plugin")
      ]
    ),
    .target(
      name: "Buzz",
      dependencies: ["SharedResources"],
      exclude: ["Resources/swiftgen.yml"],
      resources: [.process("Resources")],
      plugins: [
        .plugin(name: "SwiftGenPlugin", package: "swiftgen-plugin")
      ]
    ),
    .target(
      name: "SharedResources",
      exclude: ["Resources/swiftgen.yml"],
      resources: [.process("Resources")],
      plugins: [
        .plugin(name: "SwiftGenPlugin", package: "swiftgen-plugin")
      ]
    )
  ]
)
