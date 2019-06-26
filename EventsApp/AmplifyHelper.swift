//
//  AmplifyHelper.swift
//  EventsApp
//
//  Created by Schmelter, Tim on 5/9/19.
//  Copyright © 2019 Dubal, Rohan. All rights reserved.
//

import Foundation
import AWSAppSync
import AWSCore

class AmplifyHelper {

    var appSyncClient: AWSAppSyncClient?
    var newMessagesSubscriptionWatcher: AWSAppSyncSubscriptionWatcher<SubscribeByUserIdSubscription>?
    func configureAmplify(completion:@escaping () -> Void) {

        // You can choose the directory in which AppSync stores its persistent cache databases:
        //     let cacheConfiguration = AWSAppSyncCacheConfiguration(withRootDirectory: rootDirectoryURL)
        // or use the default configuration to store the databases in the app's Cache directory:
        //     let cacheConfiguration = AWSAppSyncCacheConfiguration()
        // or use in-memory (rather than persistent) caching by not specifying a cache configuration:
        //     let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: AWSAppSyncServiceConfig())
        // or even specify individual caches. Passing `nil` to any of these will cause it to be in-memory:
        //     let cacheConfiguration= AWSAppSyncCacheConfiguration(
        //         // or nil to use in-memory cache
        //         offlineMutations: pathToOfflineMutationDB,
        //         queries: pathToQueriesDB,
        //         subscriptionMetadataCache: pathToSubscriptionMetadataDB)
        do {
            // You can choose the directory in which AppSync stores its persistent cache databases
            let cacheConfiguration = try AWSAppSyncCacheConfiguration()

            // AppSync configuration & client initialization
            let appSyncServiceConfig = try AWSAppSyncServiceConfig()

            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: appSyncServiceConfig,
                                                                  userPoolsAuthProvider: UserPoolAuthProviderHelper(),
                                                                  cacheConfiguration: cacheConfiguration,
                                                                  connectionStateChangeHandler: nil)

            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)

            // Set id as the cache key for objects. See architecture section for details
            appSyncClient?.apolloClient?.cacheKeyForObject = { $0["id"] }

            print("AppSyncClient initialized with cacheConfiguration: \(cacheConfiguration)")
            completion()
        } catch AWSAppSyncClientError.requestFailed(_, _, _){
            print("requestFailed")
        } catch AWSAppSyncClientError.authenticationError(_) {
            print("authenticationError")
        } catch AWSAppSyncClientError.noData(_) {
            print("noData")
        } catch AWSAppSyncClientError.parseError(_, _, _) {
            print("parseError")
        } catch let error {
            print("general error: \(error)")
        }

    }
    
    func startUserSubscription(completion: (() -> Void)? = nil) {
        
        let userSubscribtion = SubscribeByUserIdSubscription(receiver_id: 7506)

        do {
            //the following statement is assigned to a cancellabe variable, cancellable = try appSyncCleint.., etc.
            newMessagesSubscriptionWatcher = try appSyncClient?.subscribe(subscription: userSubscribtion, statusChangeHandler: { status in
                self.handleSubscriptionStatus(status, senderId: 7506)
            }, resultHandler: {(result, _, error) in
                self.handleResult(result, error)
                completion?()
            })

        } catch let error as NSError {
            print("Error starting subscription. \(error)")
//            errorHandling?.handleAppSyncErrors(for: AppSyncErrors(rawValue: error.code) ?? .generalError)
        }
        
    }
    
    private func handleResult(_ result: GraphQLResult<SubscribeByUserIdSubscription.Data>?, _ error: Error?) {
        
        guard let result = result, error == nil else {
            if let error = error as NSError? {
                print(error.localizedDescription)
//                errorHandling?.handleAppSyncErrors(for: AppSyncErrors(rawValue: error.code) ?? .generalError)
            }
            return
        }
//        guard let actionType = MessageActionTypes(rawValue: result.data?.subscribeByUserId?.actionType ?? 0) else {return}
//        handleMessageActionType(actionType, result)
    }
    
    
    private func handleSubscriptionStatus(_ status: AWSAppSyncSubscriptionWatcherStatus, senderId: Int) {
        switch status {
        case .disconnected:
            print("Subscribe - disconnected")
        case .error(.connectionError):
            print("Subscribe - connectionError")
        case .connected:
            print("Subscribe - connected")
        case .connecting:
            print("Subscribe - connecting")
        case .error(.connectionRefused):
            print("Subscribe - connectionRefused")
        case .error(.disconnected):
            print("Subscribe - disconnected")
        case .error(.messageCallbackError(_)):
            print("Subscribe - messageCallbackError")
        case .error(.other(_)):
            print("Subscribe - other")
        case .error(.parseError(_)):
            print("Subscribe - parseError")
        case .error(.protocolError):
            print("Subscribe - protocolError")
        case .error(.setupError(_)):
            print("Subscribe - setupError ")
        case .error(.unknownMQTTConnectionStatus):
            print("Subscribe - unknownMQTTConnectionStatus")
        }
    }
}
