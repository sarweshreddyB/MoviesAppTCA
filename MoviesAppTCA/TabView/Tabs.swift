//
//  Tabs.swift
//  MoviesAppTCA
//
//  Created by Sarwesh Boje on 30/04/24.
//

import SwiftUI

enum Tabs: Int, View, CaseIterable {
   case home
   case movies
    case tvShows
    case favourites
   
   var body: some View {
       switch self {
       case .home:
           return Label("Home", systemImage: SystemImage.house.rawValue)
       case .movies:
           return Label("Movies", systemImage: SystemImage.film.rawValue)
       case .tvShows:
           return Label("Tv Shows", systemImage: SystemImage.tv.rawValue)
       case .favourites:
           return Label("Favourites", systemImage: SystemImage.star.rawValue)
       }
   }
}
