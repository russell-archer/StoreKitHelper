//
//  SubscriptionGroupInfo.swift
//  StoreKitHelper
//
//  Created by Russell Archer on 12/07/2024.
//

import Foundation

public struct SubscriptionGroupInfo {
    public var group: String
    public var productIds: OrderedSet<ProductId>
    
    public init(group: String, productIds: OrderedSet<ProductId>? = nil) {
        self.group = group
        self.productIds = productIds ?? OrderedSet<ProductId>()
    }
}
