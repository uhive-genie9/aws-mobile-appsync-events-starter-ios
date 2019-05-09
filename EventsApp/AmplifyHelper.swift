//
//  AmplifyHelper.swift
//  EventsApp
//
//  Created by Schmelter, Tim on 5/9/19.
//  Copyright © 2019 Dubal, Rohan. All rights reserved.
//

import Foundation
import AWSAppSync

class AmplifyHelper {

    var appSyncClient: AWSAppSyncClient?
    
    func configureAmplify() {

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
}
