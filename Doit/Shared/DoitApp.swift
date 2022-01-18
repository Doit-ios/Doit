//
//  DoitApp.swift
//  Shared
//
//  Created by 김하은 on 2022/01/18.
//

import SwiftUI
import Foundation

import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser

@main
struct MorizeApp: App {
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject var userAuth: GoogleDelegate = GoogleDelegate()
    @StateObject var kakaoAuth: AppDelegate = AppDelegate()
    init() {
        KakaoSDK.initSDK(appKey: "82b76d6f2b92f0759ac2aac0d46a3b83")
    }
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environmentObject(self.userAuth)
                .environmentObject(self.kakaoAuth)
        }
    }
}
