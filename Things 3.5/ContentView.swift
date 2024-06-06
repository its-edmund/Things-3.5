//
//  ContentView.swift
//  Things 3.5
//
//  Created by Edmund Xin on 5/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
           SidebarView()
           TasksView()
       }
    }
}

#Preview {
    ContentView()
}
