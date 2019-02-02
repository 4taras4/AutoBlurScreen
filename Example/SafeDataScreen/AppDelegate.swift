//
//  AppDelegate.swift
//  SafeDataScreen
//
//  Created by Tarik on 11/03/2018.
//  Copyright (c) 2018 Tarik. All rights reserved.
//

import UIKit
import AutoBlurScreen

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var autoBlur = AutoBlurScreen()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        autoBlur.blurStyle = .light
        autoBlur.isAutoBlur = true
        return true
    }
}

