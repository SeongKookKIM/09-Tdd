//
//  AlbertosApp.swift
//  Albertos
//
//  Created by SeongKook on 7/10/24.
//

import SwiftUI

@main
struct AlbertosApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                MenuList(viewModel: .init(menuFetching: MenuFetcher()))
            }
        }
    }
}



