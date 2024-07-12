// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StoreKitHelper",
    platforms: [.iOS(.v18), .macOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "StoreKitHelper", targets: ["StoreKitHelper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-docc-plugin.git", from: "1.3.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "StoreKitHelper", dependencies: [], resources: [.process("Resources")])
    ]
)

for target in package.targets where target.type != .binary {
    var swiftSettings = target.swiftSettings ?? []
    
    #if !hasFeature(ConciseMagicFile)
    swiftSettings.append(.enableUpcomingFeature("ConciseMagicFile"))
    #endif

    #if !hasFeature(ForwardTrailingClosures)
    swiftSettings.append(.enableUpcomingFeature("ForwardTrailingClosures"))
    #endif

    #if !hasFeature(StrictConcurrency)
    swiftSettings.append(.enableUpcomingFeature("StrictConcurrency"))
    #endif

    #if !hasFeature(BareSlashRegexLiterals)
    swiftSettings.append(.enableUpcomingFeature("BareSlashRegexLiterals"))
    #endif

    #if !hasFeature(ImplicitOpenExistentials)
    swiftSettings.append(.enableUpcomingFeature("ImplicitOpenExistentials"))
    #endif

    #if !hasFeature(ImportObjcForwardDeclarations)
    swiftSettings.append(.enableUpcomingFeature("ImportObjcForwardDeclarations"))
    #endif

    #if !hasFeature(DisableOutwardActorInference)
    swiftSettings.append(.enableUpcomingFeature("DisableOutwardActorInference"))
    #endif

    #if !hasFeature(InternalImportsByDefault)
    swiftSettings.append(.enableUpcomingFeature("InternalImportsByDefault"))
    #endif
    
    #if !hasFeature(IsolatedDefaultValues)
    swiftSettings.append(.enableUpcomingFeature("IsolatedDefaultValues"))
    #endif
    
    #if !hasFeature(GlobalConcurrency)
    swiftSettings.append(.enableUpcomingFeature("GlobalConcurrency"))
    #endif

    // swift 7
    #if !hasFeature(ExistentialAny)
    swiftSettings.append(.enableUpcomingFeature("ExistentialAny"))
    #endif
    
    target.swiftSettings = swiftSettings
}
