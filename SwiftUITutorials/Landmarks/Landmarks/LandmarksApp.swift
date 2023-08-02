//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Blu on 2023/08/02.
//

import SwiftUI

@main // 앱의 진입점을 식별하는 속성
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
