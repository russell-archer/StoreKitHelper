//
//  StoreConstants.swift
//  StoreKitHelper
//
//  Created by Russell Archer on 12/07/2024.
//

import Foundation

/// Constants used in support of App Store operations.
public struct StoreConstants {
    
    /// Returns the name of the .plist configuration file that holds a list of `ProductId`.
    public static let StoreConfiguration = "Products"
    
    /// The name of the property list used to override default StoreHelper values
    public static let Configuration = "Configuration"
    
    /// The UserDefaults key used to store the fallback list of purchased products.
    public static let PurchasedProductsFallbackKey = "PurchasedProductsFallback"
    
    /// The name of the section of the Products.plist file that contains product ids
    public static let ProductsConfiguration = "Products"

    /// The name of the optional section of the Products.plist file that contains subscription product ids
    public static let SubscriptionsConfiguration = "Subscriptions"
    
    /// The name of the optional section of the Products.plist file that contains a subscription group
    public static let SubscriptionGroupConfiguration = "Group"
}

