// swift-tools-version:4.0

import PackageDescription
let package = Package(
    name: "PerfectLocalAuthentication",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "PerfectLocalAuthentication",
            targets: ["PerfectLocalAuthentication"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/ryancoyne/JSONConfig.git",
            from: "4.0.0"),
        .package(
            url: "https://github.com/ryancoyne/Perfect-RequestLogger.git",
            from: "4.0.0"),
        .package(
            url: "https://github.com/ryancoyne/Perfect-SMTP.git",
            from: "4.0.0"),
        .package(
            url: "https://github.com/ryancoyne/Postgres-StORM-ryan.git",
            from: "4.0.0"),
        .package(
            url: "https://github.com/ryancoyne/Perfect-Session-PostgreSQL.git",
            from: "4.0.0"),
        .package(
            url: "https://github.com/ryancoyne/Perfect-Mustache.git",
            from: "4.0.0"),
        .package(
            url: "https://github.com/ryancoyne/Perfect-HTTP.git",
            from: "4.0.0"),
    ],
    targets: [
        .target(
            name: "PerfectLocalAuthentication",
            dependencies: ["JSONConfig", "PerfectRequestLogger", "PerfectSMTP", "PostgresStORM", "PerfectSessionPostgreSQL", "PerfectMustache", "PerfectHTTP"],
            path: "Sources/PerfectLocalAuthentication"
        ),
    ]
)
