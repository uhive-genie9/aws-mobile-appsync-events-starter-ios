//
//  AccessTokenProvider.swift
//  EventsApp
//
//  Created by Schmelter, Tim on 5/9/19.
//  Copyright © 2019 Dubal, Rohan. All rights reserved.
//

import Foundation
import AWSAppSync
import AWSCognitoIdentityProvider

class UserPoolAuthProviderHelper: AWSCognitoUserPoolsAuthProvider {
    func getLatestAuthToken() -> String {
        let token = UserDefaults.standard.string(forKey: "accessToken") ?? "TOKEN_NOT_FOUND"
        print("Returning token \(token)")
        return token
    }
}
