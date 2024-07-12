//
//  StoreKitHelper.swift
//  StoreKitHelper
//
//  Created by Russell Archer on 12/07/2024.
//

public import StoreKit
import Observation

/// Define the `ProductId` type
public typealias ProductId = String

/// StoreHelper encapsulates StoreKit2 in-app purchase functionality and makes it easy to work with the App Store.
@available(iOS 15.0, macOS 12.0, *)
@MainActor
public final class StoreKitHelper {
    // MARK: - Public properties
    
    /// Array of `Product` retrieved from the App Store and available for purchase.
    public private(set) var products: [Product]?
}
