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
      url: "https://github.com/ycg663/T2SKit/releases/download/1.3.0/Tun2SocksFramework.xcframework.zip",
      checksum: "c92d28b034a6f1628ef6fbb35ca87ba1270b48fcd376bb4f6db8d704ba353c6e"
    )
  ]
)
