import ProjectDescription

let dependencies = Dependencies(
    carthage: nil,
    swiftPackageManager: .init(
        [
            .remote(
                url: "https://github.com/awslabs/aws-mobile-appsync-sdk-ios",
                requirement: .upToNextMajor(from: "3.2.0")
            ),
            .remote(
                url: "https://github.com/aws-amplify/aws-sdk-ios-spm",
                requirement: .upToNextMajor(from: "2.23.3")
            )
        ]
    ),
    platforms: [.iOS]
)
