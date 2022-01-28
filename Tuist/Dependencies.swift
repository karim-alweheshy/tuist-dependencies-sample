import ProjectDescription

let dependencies = Dependencies(
    carthage: nil,
    swiftPackageManager: .init(
        [
            .remote(
                url: "https://github.com/MessageKit/MessageKit",
                requirement: .upToNextMajor(from: "3.7.0")
            )
        ]
    ),
    platforms: [.iOS]
)
