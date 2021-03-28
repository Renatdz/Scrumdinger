//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Renato Mendes on 21/03/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.data
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
