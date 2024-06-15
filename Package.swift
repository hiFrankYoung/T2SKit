// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "T2SKit",
  products: [
    .library(name: "T2SKit", targets: ["T2SKit"])
  ],
  targets: [
    .target(name: "T2SKit", dependencies: ["T2SKitC", "Tun2SocksFramework"]),
    .target(name: "T2SKitC", publicHeadersPath: "."),
    .binaryTarget(
      name: "Tun2SocksFramework",
      url: "https://github.com/hiFrankYoung/T2SKit/releases/download/0.1.0/Tun2SocksFramework.xcframework.zip",
      checksum: "8b22dd99aa00ecbb6bd3ee1a1475535e279cd03236e4b2b635fcd61296deff58"
    )
  ]
)
