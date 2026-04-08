//
//  Project.swift
//  Config
//
//  Created by One on 4/5/26.
//

import ProjectDescription

let project = Project(
    name: "Print",
    organizationName: "com.myapp",
    targets: [
        .target(
            name: "Print",
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
