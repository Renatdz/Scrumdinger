//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Renato Mendes on 21/03/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.data)
        }
    }
}
