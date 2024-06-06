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
            SidebarItem()
        }
        .listStyle(SidebarListStyle())
        .frame(minWidth: 150, maxWidth: 300)
    }
}

struct SidebarItem: View {
    var body: some View {
        NavigationLink(destination: DetailView(item: "")) {
            Text("Item")
                .bold()
                .foregroundStyle(<#T##style: ShapeStyle##ShapeStyle#>)
        }
    }
}

struct DetailView: View {
    var item: String
    
    var body: some View {
        Text("Detail view for \(item)")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
