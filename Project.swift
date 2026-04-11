import ProjectDescription

let project = Project(
    name: "MyApp",
    targets: [
        .target(
            name: "MyApp",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.MyApp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "MyApp/Sources",
                "MyApp/Resources",
            ],
            dependencies: [
                .project(target: "UIText", path: .relativeToRoot("Feature/UIText")),
                .project(target: "Print", path: .relativeToRoot("Feature/Print")),
                .project(target: "Parsing", path: .relativeToRoot("Feature/Parsing")),
                .project(target: "DIContainer", path: .relativeToRoot("Core/DIContainer")),
                .project(target: "ContentData", path: .relativeToRoot("Core/ContentData"))
            ]
        ),
    ]
)
