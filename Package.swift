// swift-tools-version: 5.9
// This is a Skip (https://skip.tools) package.
import PackageDescription

let package = Package(
    name: "pasacao-hotline",
    defaultLocalization: "en",
    platforms: [.iOS(.v17), .macOS(.v14), .tvOS(.v17), .watchOS(.v10), .macCatalyst(.v17)],
    products: [
        .library(name: "PasacaoHotline", type: .dynamic, targets: ["PasacaoHotline"]),
    ],
    dependencies: [
        .package(url: "https://source.skip.tools/skip.git", from: "1.4.8"),
        .package(url: "https://source.skip.tools/skip-ui.git", from: "1.0.0")
    ],
    targets: [
        .target(name: "PasacaoHotline", dependencies: [
            .product(name: "SkipUI", package: "skip-ui")
        ], resources: [.process("Resources")], plugins: [.plugin(name: "skipstone", package: "skip")]),
        .testTarget(name: "PasacaoHotlineTests", dependencies: [
            "PasacaoHotline",
            .product(name: "SkipTest", package: "skip")
        ], resources: [.process("Resources")], plugins: [.plugin(name: "skipstone", package: "skip")]),
    ]
)
