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
      url: "https://github.com/ycg663/T2SKit/releases/download/1.3.0/ClashKit.xcframework.zip",
      checksum: "2c2328eef7dfdf9ee1a526d17c07923a124ebe840fea0325d6f08775917177"
    )
  ]
)
