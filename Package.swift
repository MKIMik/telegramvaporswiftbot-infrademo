// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "TelegramVaporBot",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.117.0")
    ],
    targets: [
        .target(
            name: "App",
            dependencies: [
                .product(name: "Vapor", package: "vapor")
            ],
            path: "Sources/App"
        ),
        .executableTarget(
            name: "Run",
            dependencies: [
                "App"
            ],
            path: "Sources/Run"
        )
    ]
)

