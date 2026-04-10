//
//  Project.swift
//  Config
//
//  Created by One on 4/5/26.
//

import ProjectDescription

let project = Project(
    name: "UIText",
    organizationName: "com.myapp",
    targets: [
        .target(
            name: "UIText",
            destinations: .iOS,
            product: .staticFramework,       // Static/Dynamic Framework
            bundleId: "com.myapp.UIText",
            deploymentTargets: .iOS("18.0"),
            buildableFolders: [.folder("Sources")],
            dependencies: [
                .project(target: "ContentData", path: "../../Core/ContentData")
            ],
            settings: .settings(
                base: [
                    "SWIFT_VERSION": "6.3"
                ]
            )
        )
    ]
)
