//
//  MoviesTabView.swift
//  MoviesAppTCA
//
//  Created by Sarwesh Boje on 29/04/24.
//

import SwiftUI


struct MoviesTabView: View {
    
    // Private properties
    @State private var selectedTab: Tabs = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem { Tabs.home }
            MoviesView()
                .tabItem { Tabs.movies }
            TvShowsView()
                .tabItem { Tabs.tvShows }
            FavouritesView()
                .tabItem { Tabs.favourites }
        }
        
    }
}

#Preview {
    MoviesTabView()
}
