import ProjectDescription

let name = "FeatureB"
let project = Project(
  name: name,
  organizationName: "tuist.io",
  targets: [
    Target(
      name: name,
      platform: .iOS,
      product: .staticFramework,
      bundleId: "io.tuist." + name,
      sources: ["Sources/**"],
      dependencies: [
        .project(
          target: "Library",
          path: .relativeToRoot("Library")
        ),
        .external(name: "NonEmpty")
      ]
    ),
    Target(
      name: name + "Tests",
      platform: .iOS,
      product: .unitTests,
      bundleId: "io.tuist.tests." + name,
      sources: ["Tests/**"],
      dependencies: []
    ),
  ]
)
