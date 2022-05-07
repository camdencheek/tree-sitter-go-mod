// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TreeSitterGoMod",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterGoMod", targets: ["TreeSitterGoMod"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterGoMod",
                path: ".",
                exclude: [
                    "binding.gyp",
                    "bindings",
                    "Cargo.toml",
                    "corpus",
                    "grammar.js",
                    "LICENSE",
                    "Makefile",
                    "package.json",
                    "README.md",
                    "src/node-types.json",
                    "src/grammar.json",
                ],
                sources: [
                    "src/parser.c",
                ],
                resources: [
                    .copy("queries")
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ]
)
