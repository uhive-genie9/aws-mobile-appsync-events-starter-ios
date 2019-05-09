//
//  AppDelegate.swift
//  EventsApp
//

import UIKit
import AWSAppSync
import AWSCognitoIdentityProvider

let username = "USER"
let password = "PASS"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var amplifyHelper: AmplifyHelper!

    var appSyncClient: AWSAppSyncClient? {
        return amplifyHelper.appSyncClient
    }

    var pool: AWSCognitoIdentityUserPool!

    var mfaDelegate = MFADelegate()
    var passwordDelegate = PasswordDelegate()
    var rememberDeviceDelegate = RememberDeviceDelegate()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        AWSDDLog.sharedInstance.logLevel = .verbose
        AWSDDLog.sharedInstance.add(AWSDDTTYLogger.sharedInstance)

        pool = AWSCognitoIdentityUserPool.default()
        pool.delegate = self

        let currentUser = pool.currentUser()
        print("pool.currentUser: \(String(describing: currentUser))")
        currentUser?.getSession().continueWith { task in
            print("getSession.task: \(String(describing: task))")
            guard task.error == nil else {
                print("getSession error: \(task.error!)")
                return nil
            }

            guard let session = task.result else {
                print("getSession: task result unexpectedly nil")
                return nil
            }

            guard let accessToken = session.accessToken?.tokenString else {
                print("accessToken is nil")
                return nil
            }

            UserDefaults.standard.set(accessToken, forKey: "accessToken")
            return nil
        }

        amplifyHelper = AmplifyHelper()
        amplifyHelper.configureAmplify()

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}

// MARK:- AWSCognitoIdentityInteractiveAuthenticationDelegate protocol delegate

extension AppDelegate: AWSCognitoIdentityInteractiveAuthenticationDelegate {

    func startPasswordAuthentication() -> AWSCognitoIdentityPasswordAuthentication {
        return passwordDelegate
    }

    func startMultiFactorAuthentication() -> AWSCognitoIdentityMultiFactorAuthentication {
        return mfaDelegate
    }

    func startRememberDevice() -> AWSCognitoIdentityRememberDevice {
        return rememberDeviceDelegate
    }
}

// MARK: - AWSCognitoIdentityPasswordAuthentication

class PasswordDelegate: NSObject, AWSCognitoIdentityPasswordAuthentication {
    var passwordAuthenticationCompletion: AWSTaskCompletionSource<AWSCognitoIdentityPasswordAuthenticationDetails>?

    func getDetails(_ authenticationInput: AWSCognitoIdentityPasswordAuthenticationInput,
                    passwordAuthenticationCompletionSource: AWSTaskCompletionSource<AWSCognitoIdentityPasswordAuthenticationDetails>) {

        passwordAuthenticationCompletion = passwordAuthenticationCompletionSource

        let authDetails = AWSCognitoIdentityPasswordAuthenticationDetails(username: username,
                                                                          password: password)

        passwordAuthenticationCompletion?.set(result: authDetails)
    }

    func didCompleteStepWithError(_ error: Error?) {
        if let error = error {
            print("PasswordDelegate.\(#function) - error: \(error)")
        } else {
            print("PasswordDelegate.\(#function) - success")
            let pool = AWSCognitoIdentityUserPool.default()
            let currentUser = pool.currentUser()
            print("pool.currentUser: \(String(describing: currentUser))")

            currentUser?.getSession().continueWith { task in
                print("getSession.task: \(String(describing: task))")
            }
        }
    }
}

// MARK:- AWSCognitoIdentityRememberDevice protocol delegate

class RememberDeviceDelegate: NSObject, AWSCognitoIdentityRememberDevice {
    var rememberDeviceCompletionSource: AWSTaskCompletionSource<NSNumber>?

    func getRememberDevice(_ rememberDeviceCompletionSource: AWSTaskCompletionSource<NSNumber>) {
        self.rememberDeviceCompletionSource = rememberDeviceCompletionSource
        self.rememberDeviceCompletionSource?.set(result: false)
    }

    func didCompleteStepWithError(_ error: Error?) {
        if let error = error {
            print("DeviceRememberer.\(#function) - error: \(error)")
        } else {
            print("DeviceRememberer.\(#function) - success")
        }
    }
}


// MARK: - AWSCognitoIdentityMultiFactorAuthentication

class MFADelegate: NSObject, AWSCognitoIdentityMultiFactorAuthentication {
    var mfaCodeCompletionSource: AWSTaskCompletionSource<NSString>?

    func getCode(_ authenticationInput: AWSCognitoIdentityMultifactorAuthenticationInput, mfaCodeCompletionSource: AWSTaskCompletionSource<NSString>) {
        self.mfaCodeCompletionSource = mfaCodeCompletionSource
        print("\(#function) code sent to \(String(describing: authenticationInput.destination))")
    }

    func didCompleteMultifactorAuthenticationStepWithError(_ error: Error?) {
        if let error = error {
            print("MFADelegate.\(#function) - error: \(error)")
        } else {
            print("MFADelegate.\(#function) - success")
        }
    }
}
