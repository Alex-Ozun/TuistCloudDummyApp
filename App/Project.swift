import ProjectDescription

let name = "App"
let project = Project(
  name: name,
  organizationName: "tuist.io",
  targets: [
    Target(
      name: name,
      platform: .iOS,
      product: .app,
      bundleId: "io.tuist.App",
      sources: ["Sources/**"],
      dependencies: []
    ),
    Target(
      name: name + "Tests",
      platform: .iOS,
      product: .unitTests,
      bundleId: "io.tuist.App",
      sources: ["Tests/**"],
      dependencies: []
    ),
  ]
)
