//
//  Yolo_MarkerApp.swift
//  Yolo Marker
//
//  Created by p on 1/22/25.
//

import SwiftUI

@main
struct Yolo_MarkerApp: App {
  @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

  var body: some Scene {
    WindowGroup {
      EmptyView()
    }
    .windowStyle(.hiddenTitleBar)
    .defaultSize(width: 0, height: 0)
    .commands {
      CommandGroup(after: .windowSize) {
        Button("Show Logs") {
          appDelegate.showLogs()
        }
        .keyboardShortcut("l", modifiers: [.command])
      }
    }
  }
}
