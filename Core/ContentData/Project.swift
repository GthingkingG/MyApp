//
//  Project.swift
//  Config
//
//  Created by One on 4/10/26.
//

import ProjectDescription

let project = Project(
    name: "ContentData",
    organizationName: "com.myapp",
    targets: [
        .target(
            name: "ContentData",
            destinations: .iOS,
            product: .staticFramework,       // Static/Dynamic Framework
            bundleId: "com.myapp.Print",
            deploymentTargets: .iOS("18.0"),
            buildableFolders: [.folder("Sources")],
            dependencies: [
                .project(target: "DIContainer", path: "../../Core/DIContainer")
            ],
            settings: .settings(
                base: [
                    "SWIFT_VERSION": "6.3"
                ]
            )
        )
    ]
)
