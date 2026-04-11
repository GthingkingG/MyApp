//
//  Project.swift
//  Config
//
//  Created by One on 4/12/26.
//

import ProjectDescription

let project = Project(
    name: "Parsing",
    organizationName: "com.myapp",
    targets: [
        .target(
            name: "Parsing",
            destinations: .iOS,
            product: .staticFramework,       // Static/Dynamic Framework
            bundleId: "com.myapp.Parsing",
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
