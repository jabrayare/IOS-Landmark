//
//  LandMarksApp.swift
//  LandMarks
//
//  Created by Jibril Mohamed on 12/21/21.
//

import SwiftUI

@main
struct LandMarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
