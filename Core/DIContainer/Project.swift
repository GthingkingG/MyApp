//
//  Project.swift
//  Config
//
//  Created by One on 4/8/26.
//

import ProjectDescription

let project = Project(
    name: "DIContainer",
    organizationName: "com.myapp",
    targets: [
        .target(
            name: "DIContainer",
            destinations: .iOS,
            product: .staticFramework,       // Static/Dynamic Framework
            bundleId: "com.myapp.Print",
            deploymentTargets: .iOS("18.0"),
            buildableFolders: [.folder("Sources")],
            dependencies: [
            ],
            settings: .settings(
                base: [
                    "SWIFT_VERSION": "6.3"
                ]
            )
        )
    ]
)
