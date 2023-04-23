//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Blu on 2023/04/14.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
