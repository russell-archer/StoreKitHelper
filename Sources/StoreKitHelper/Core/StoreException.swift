//
//  StoreException.swift
//  StoreKitHelper
//
//  Created by Russell Archer on 12/07/2024.
//

/// StoreKitHelper exceptions
public enum StoreException: Error, Equatable {
    case purchaseException
    case purchaseInProgressException
    case transactionVerificationFailed
    case productTypeNotSupported
    case noAvailableScene

    public func shortDescription() -> String {
        switch self {
        case .purchaseException:             return "Exception. StoreKit throw an exception while processing a purchase"
        case .purchaseInProgressException:   return "Exception. You can't start another purchase yet, one is already in progress"
        case .transactionVerificationFailed: return "Exception. A transaction failed StoreKit's automatic verification"
        case .productTypeNotSupported:       return "Exception. Products of type consumable or non-renewable are not supported"
        case .noAvailableScene:              return "Exception. No available scenes for product view to present"
        }
    }
}
