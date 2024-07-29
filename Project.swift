import ProjectDescription

let project = Project(
    name: "ConfilctExampleWithTuist",
    targets: [
        .target(
            name: "ConfilctExampleWithTuist",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.ConfilctExampleWithTuist",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["ConfilctExampleWithTuist/Sources/**"],
            resources: ["ConfilctExampleWithTuist/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "ConfilctExampleWithTuistTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.ConfilctExampleWithTuistTests",
            infoPlist: .default,
            sources: ["ConfilctExampleWithTuist/Tests/**"],
            resources: [],
            dependencies: [.target(name: "ConfilctExampleWithTuist")]
        ),
    ]
)
