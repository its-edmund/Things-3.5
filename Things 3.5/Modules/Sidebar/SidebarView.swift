//
//  SidebarView.swift
//  Things 3.5
//
//  Created by ByteDance on 6/6/24.
//

import SwiftUI

struct SidebarView: View {
    var body: some View {
        List {
            Section {
                SidebarItem(iconName: "tray.fill", iconColor: Color(red: 0.333, green: 0.675, blue: 0.941), label: "Inbox")
            }
            .contentMargins(.vertical, 10)

            Section {
                SidebarItem(iconName: "star.fill", iconColor: Color(red: 245/255, green: 214/255, blue: 71/255), label: "Today")
                SidebarItem(label: "Upcoming")
                SidebarItem(label: "Anytime")
                SidebarItem(label: "Someday")
            }
            .contentMargins(.bottom, 10)
            
            Section {
                SidebarItem(label: "Logbook")
                SidebarItem(label: "Trash")
            }
            .contentMargins(.bottom, 10)
        }
        .listStyle(SidebarListStyle())
        .background(Color(red: 40/255, green: 40/255, blue: 40/255))
    }
}

struct SidebarItem: View {
    var iconName: String?
    var iconColor: Color?
    var label: String
    
    var body: some View {
        NavigationLink(destination: DetailView(item: "")) {
            Image(systemName: iconName ?? "").foregroundColor(iconColor ?? .white)
            Text(label)
                .font(.system(size: 14))
                .fontWeight(.medium)
                .foregroundColor(Color(red: 0.835, green: 0.835, blue: 0.835))
        }
        .padding(.vertical, -5)
    }
}

struct DetailView: View {
    var item: String
    
    var body: some View {
        Text("Detail view for \(item)")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
