import ProjectDescription
import ProjectDescriptionHelpers

/*
                +-------------+
                |             |
                |     App     | Contains TuistDependenciesSample App target and TuistDependenciesSample unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let infoPlist: [String: InfoPlist.Value] = [
    "CFBundleShortVersionString": "1.0",
    "CFBundleVersion": "1",
    "UIMainStoryboardFile": "",
    "UILaunchStoryboardName": "LaunchScreen"
    ]
let target = Target(
    name: "TuistDependenciesSample",
    platform: .iOS,
    product: .app,
    productName: "TuistDependenciesSample",
    bundleId: "TuistDependenciesSample.com",
    deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
    infoPlist: .extendingDefault(with: infoPlist),
    sources: "TuistDependenciesSample/Sources",
    resources: "TuistDependenciesSample/Resources",
    dependencies: [
        .external(name: "MessageKit")
    ]
)

let project = Project(
    name: "TuistDependenciesSample",
    organizationName: "tuist.io",
    targets: [target]
)
