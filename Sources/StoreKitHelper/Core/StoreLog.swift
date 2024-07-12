//
//  StoreLog.swift
//  StoreKitHelper
//
//  Created by Russell Archer on 12/07/2024.
//

import Foundation

@available(iOS 18.0, macOS 15.0, *)
public struct StoreLog {
    
    /// Logs a StoreNotification.
    /// - Parameter event: A StoreNotification.
    public static func event(_ event: StoreNotification) { logEvent(event) }
    
    /// Logs an StoreNotification. Note that the text (shortDescription) and the productId for the
    /// log entry will be publically available in the Console app.
    /// - Parameters:
    ///   - event:      A StoreNotification.
    ///   - productId:  A ProductId associated with the event.
    public static func event(_ event: StoreNotification, productId: ProductId, transactionId: String? = nil) {
        logEvent(event, productId: productId, transactionId: transactionId)
    }
    
    /// Logs an StoreNotification.
    /// - Parameters:
    ///   - event:      A StoreNotification.
    ///   - productId:  A ProductId associated with the event.
    ///   - webOrderLineItemId: A unique ID that identifies subscription purchase events across devices, including subscription renewals
    public static func event(_ event: StoreNotification, productId: ProductId, webOrderLineItemId: String?, transactionId: String? = nil) {
        logEvent(event, productId: productId, webOrderLineItemId: webOrderLineItemId, transactionId: transactionId)
    }
    
    /// Logs a StoreNotification as a transaction.
    /// - Parameters:
    ///   - event:      A StoreNotification.
    ///   - productId:  A ProductId associated with the event.
    public static func transaction(_ event: StoreNotification, productId: ProductId, transactionId: String? = nil) {
        #if DEBUG
        print("\(event.shortDescription()) for product \(productId) \(transactionId == nil ? "" : "with transaction id \(transactionId!)")")
        #endif
    }
    
    /// Logs a StoreException.
    /// - Parameters:
    ///   - exception:  A StoreException.
    ///   - productId:  A ProductId associated with the event.
    public static func exception(_ exception: StoreException, productId: ProductId, transactionId: String? = nil) {
        #if DEBUG
        print("\(exception.shortDescription()). For product \(productId) \(transactionId == nil ? "" : "with transaction id \(transactionId!)")")
        #endif
    }
    
    /// Logs a message.
    /// - Parameter message: The message to log.
    public static func event(_ message: String) {
        #if DEBUG
        print(message)
        #endif
    }
    
    private static func logEvent(_ event: StoreNotification) {
        #if DEBUG
        if event.isNotificationPurchaseState() { return }
        print(event.shortDescription())
        #endif
    }
    
    private static func logEvent(_ event: StoreNotification, productId: ProductId, transactionId: String? = nil) {
        #if DEBUG
        if event.isNotificationPurchaseState() { return }
        print("\(event.shortDescription()) for product \(productId) \(transactionId == nil ? "" : "with transaction id \(transactionId!)")")
        #endif
    }
    
    private static func logEvent(_ event: StoreNotification, productId: ProductId, webOrderLineItemId: String?, transactionId: String? = nil) {
        #if DEBUG
        if event.isNotificationPurchaseState() { return }
        print("\(event.shortDescription()) for product \(productId) with webOrderLineItemId \(webOrderLineItemId ?? "none") \(transactionId == nil ? "" : "and transaction id \(transactionId!)")")
        #endif
    }
}
