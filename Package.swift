// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "swift-http-example",
    dependencies: [
        .package(url: "https://github.com/swift-server/http.git", .branch("develop")),
    ],
    targets: [
        .target(name: "swift-http-example", dependencies: ["SwiftServerHTTP"]),
    ]
)
