import ProjectDescription

let name = "LibraryB"
let project = Project(
  name: name,
  organizationName: "tuist.io",
  targets: [
    Target(
      name: name,
      platform: .iOS,
      product: .framework,
      bundleId: "io.tuist." + name,
      sources: ["Sources/**"],
      dependencies: []
    ),
    Target(
      name: name + "Tests",
      platform: .iOS,
      product: .unitTests,
      bundleId: "io.tuist.tests." + name,
      sources: ["Tests/**"],
      dependencies: [
        .target(name: name),
        .xctest
      ]
    ),
  ]
)
